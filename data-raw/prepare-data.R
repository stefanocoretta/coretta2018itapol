library(tidyverse)
library(rticulate)

speakers <- read_csv("./data-raw/datasets/speakers.csv")
stimuli <- read_csv("./data-raw/datasets/stimuli.csv")

columns <- c(
  "speaker",
  "seconds",
  "rec_date",
  "prompt",
  "label",
  "TT_displacement_sm",
  "TT_velocity",
  "TT_velocity_abs",
  "TD_displacement_sm",
  "TD_velocity",
  "TD_velocity_abs",
  "TR_displacement_sm",
  "TR_velocity",
  "TR_velocity_abs"
)

#### Static ####

durations <- list.files(
  path = "./data-raw/datasets/acoustics",
  pattern = "*-durations.csv",
  full.names = TRUE
) %>%
  map_df(~read_csv(., na = "--undefined--"))

voicing <- list.files(
  path = "./data-raw/datasets/egg",
  pattern = "*-voicing.csv",
  full.names = TRUE
) %>%
  map_df(~read_csv(., na = "--undefined--"))

gestures <- list.files(
  path = "./data-raw/datasets/ultrasound",
  pattern = "*-tongue-cart.tsv",
  full.names = TRUE
) %>%
  read_aaa(., columns, format = "wide") %>%
  separate(label, c("gesture", "part")) %>%
  select(-(part:Y_42)) %>%
  spread(gesture, seconds)

token_measures <- full_join(durations, voicing) %>%
  full_join(y = gestures) %>%
  mutate(
    c1_vot = (voicing_start - c1_rel) * 1000,
    vor = (c2_rel - v_onset) * 1000,
    gons_clos = (closure - GONS) * 1000,
    gons_max = (max - GONS) * 1000,
    nucleus_duration = (NOFF - NONS) * 1000,
    rel_gons = (GONS - c1_rel) * 1000
  )

# data for 7 time points per token: GONS, peak 1, peak 2, NONS, NOFF, MAX, closure
kinematics <- list.files(
  path = "./data-raw/datasets/ultrasound",
  pattern = "*-tongue-cart.tsv",
  full.names = TRUE
) %>%
  read_aaa(., columns, format = "wide") %>%
  select(-(X_1:Y_42))

#### Dynamic ####

# time series: 9 points within vowel duration
formants_series <- list.files(
  path = "./data-raw/datasets/acoustics",
  pattern = "*-formants.csv",
  full.names = TRUE
) %>%
  map_df(~read_csv(., na = "--undefined--"))

tracegram <- list.files(
  path = "./data-raw/datasets/egg",
  pattern = "*-degg-tracing.csv",
  full.names = TRUE
) %>%
  map_df(~read_csv(.)) %>%
  mutate(
    closed_quotient = minimum - maximum,
    peaks_ratio = maximum / minimum
  )

wavegram <- list.files(
  path = "./data-raw/datasets/egg",
  pattern = "*-wavegram.csv",
  full.names = TRUE
) %>%
  map_df(~read_csv(.))

# tongue contours at 7 time points per token: GONS, peak 1, peak 2, NONS, NOFF, MAX, closure
# series: X position
tongue_contours <- list.files(
  path = "./data-raw/datasets/ultrasound",
  pattern = "*-tongue-cart.tsv",
  full.names = TRUE
) %>%
  read_aaa(., columns)

# time series: ultrasonic frame
kinematics_series <- list.files(
  path = "./data-raw/datasets/ultrasound",
  pattern = "*-vowel-series.tsv",
  full.names = TRUE
) %>%
  read_aaa(., columns, format = "wide") %>%
  select(-(X_1:Y_42)) %>%
  left_join(y = token_measures) %>%
  mutate(
    proportion = (seconds - v_onset) / (v_offset - v_onset)
  )

#### Join ####

# durations, voicing, gestures
token_measures <- token_measures %>%
  left_join(y = speakers) %>%
  left_join(y = stimuli)

kinematics <- kinematics %>%
  left_join(y = speakers) %>%
  left_join(y = stimuli)

formants_series <- formants_series %>%
  left_join(y = speakers) %>%
  left_join(y = stimuli)

tracegram <- tracegram %>%
  left_join(y = speakers) %>%
  left_join(y = stimuli)

wavegram <- wavegram %>%
  left_join(y = speakers) %>%
  left_join(y = stimuli)

tongue_contours <- tongue_contours %>%
  mutate(word = word(prompt, 2)) %>%
  left_join(y = speakers) %>%
  left_join(y = stimuli)

kinematics_series <- kinematics_series %>%
  left_join(y = speakers) %>%
  left_join(y = stimuli)

#### Use data ####

usethis::use_data(token_measures, kinematics, formants_series, tracegram, tongue_contours, kinematics_series, overwrite = TRUE)

usethis::use_data(wavegram, compress = "xz", overwrite = TRUE)

