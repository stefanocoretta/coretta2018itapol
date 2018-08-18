#' Acousics and articulatory durational measures of Italian and Polish
#'
#' A dataset with measures from acoustics and articulatory data of Italian and Polish.
#' The dataset contains durational measures of segments, voicing, and tongue gestures.
#'
#' @docType data
#' @format A tibble with 1343 observations and 52 variables.
#' \describe{
#'   \item{index}{observation number within speaker}
#'   \item{speaker}{speaker's ID}
#'   \item{file}{audio chunk file name}
#'   \item{rec_date}{date and time of recording}
#'   \item{word}{word stimulus}
#'   \item{time}{(s) time of the audio chunk start within the concatenated audio file}
#'   \item{word_duration}{(ms) duration of the word}
#'   \item{c1_duration}{(ms) duration of C1}
#'   \item{c1_closure}{(ms) duration of C1 closure}
#'   \item{c1_rvot}{(ms) duration of the C1 Release to Vowel Onset Time}
#'   \item{c1_rvofft}{(ms) duration of the C1 Release to Vowel Offset Time}
#'   \item{vowel_duration}{(ms) duration of V1}
#'   \item{closure_duration}{(ms) duration of C2 closure}
#'   \item{rvot}{(ms) duration of the C2 Release to Vowel Onset Time}
#'   \item{c2_duration}{(ms) duration of C2}
#'   \item{v2_duration}{(ms) duration of V2}
#'   \item{sentence_duration}{(s) duration of sentence}
#'   \item{c1_rel}{(s) time of C1 release}
#'   \item{v_onset}{(s) time of V1 onset}
#'   \item{v_offset}{(s) time of V1 offset}
#'   \item{c2_rel}{(s) time of C2 release}
#'   \item{rel_rel}{(ms) duration of the Release to Release interval}
#'   \item{voicing_start}{(s) time of voicing onset}
#'   \item{voicing_end}{(s) time of voicing offset}
#'   \item{voicing_duration}{(ms) duration of voiced interval}
#'   \item{voiced_points}{number of points out of 5 within the first half of C1 closure in which voicing is present}
#'   \item{prompt}{sentence stimulus}
#'   \item{closure}{(s) C1 closure onset}
#'   \item{GONS}{(s) onset of C1 closing gesture}
#'   \item{max}{(s) time of maximum displacement of C1 closing gesture}
#'   \item{NOFF}{(s) offset of C1 gesture nucleus}
#'   \item{NONS}{(s) onset of C1 gesture nucleus}
#'   \item{peak1}{(s) first tongue velocity peak}
#'   \item{peak2}{(s) second tongue velocity peak}
#'   \item{c1_vot}{(ms) Voice Onset Time of C1}
#'   \item{vor}{(ms) Vowel onset to Release}
#'   \item{gons_clos}{(ms) duration of closing gesture (to closure onset)}
#'   \item{gons_max}{(ms) duration of closing gesture (to maximum displacement)}
#'   \item{nucleus_duration}{(ms) duration of the gesture nucleus}
#'   \item{rel_gons}{(ms) C2 closing gesture onset time from C1 release}
#'   \item{language}{speaker's native language (\code{Italian}, \code{Polish})}
#'   \item{sex}{speaker's sex (\code{f}, \code{m})}
#'   \item{item}{word ID number}
#'   \item{ipa}{IPA transcription of the word}
#'   \item{c1}{first consonant (C1)}
#'   \item{c1_phonation}{voicing of C1 (\code{voiceless}, \code{voiced})}
#'   \item{vowel}{V1 and V2 (\code{a}, \code{o}, \code{u})}
#'   \item{anteropost}{backness of the vowel (\code{back}, \code{central})}
#'   \item{height}{height of the vowel (\code{high}, \code{mid}, \code{low})}
#'   \item{c2}{second consonant (C2)}
#'   \item{c2_phonation}{voicing of C2 (\code{voiceless} or \code{voiced})}
#'   \item{c2_place}{place of C2 (\code{coronal}, \code{velar})}
#' }
"token_measures"

#' Formant trajectories in Italian and Polish
#'
#' A dataset with the trajectories of formant values (F0-F3) of Italian and Polish vowels.
#'
#' @docType data
#' @format A tibble with 11565 observations and 20 variables.
#' \describe{
#'   \item{speaker}{speaker's ID}
#'   \item{file}{audio chunk file name}
#'   \item{word}{word stimulus}
#'   \item{time}{time point within vowel (9 points per vowel)}
#'   \item{f1}{(Hz) F1}
#'   \item{f2}{(Hz) F2}
#'   \item{f3}{(Hz) F3}
#'   \item{f4}{(Hz) fundamental frequency (F0)}
#'   \item{language}{speaker's native language (\code{Italian}, \code{Polish})}
#'   \item{sex}{speaker's sex (\code{f}, \code{m})}
#'   \item{item}{word ID number}
#'   \item{ipa}{IPA transcription of the word}
#'   \item{c1}{first consonant (C1)}
#'   \item{c1_phonation}{voicing of C1 (\code{voiceless}, \code{voiced})}
#'   \item{vowel}{V1 and V2 (\code{a}, \code{o}, \code{u})}
#'   \item{anteropost}{backness of the vowel (\code{back}, \code{central})}
#'   \item{height}{height of the vowel (\code{high}, \code{mid}, \code{low})}
#'   \item{c2}{second consonant (C2)}
#'   \item{c2_phonation}{voicing of C2 (\code{voiceless} or \code{voiced})}
#'   \item{c2_place}{place of C2 (\code{coronal}, \code{velar})}
#' }
"formants_series"

#' Tongue tip, dorsum, root displacement and velocity in Italian and Polish
#'
#' A dataset with displacement and velocity of tongue tip, dorsum and, root
#' during the production of vowels in Italian and Polish.
#'
#' @format A tibble with 7496 observations and 64 variables:
#' \describe{
#'   \item{\code{speaker}}{speaker's ID}
#'   \item{\code{seconds}}{(s) time within audio file}
#'   \item{\code{rec_date}}{date and time of recording}
#'   \item{\code{prompt}}{sentence stimulus}
#'   \item{\code{label}}{\code{AAA} annotation label}
#'   \item{\code{TT_displacement_sm}}{smoothed Tongue Tip displacement}
#'   \item{\code{TT_velocity}}{Tongue Tip velocity}
#'   \item{\code{TT_velocity_abs}}{absolute Tongue Tip velocity}
#'   \item{\code{TD_displacement_sm}}{smoothed Tongue Dorsum displacement}
#'   \item{\code{TD_velocity}}{Tongue Dorsum velocity}
#'   \item{\code{TD_velocity_abs}}{absolute Tongue Dorsum velocity}
#'   \item{\code{TR_displacement_sm}}{smoothed Tongue Root displacement}
#'   \item{\code{TR_velocity}}{Tongue Root velocity}
#'   \item{\code{TR_velocity_abs}}{Absolute Tongue Root velocity}
#'   \item{\code{index}}{trajectory index}
#'   \item{\code{file}}{audio file name}
#'   \item{\code{word}}{word stimulus}
#'   \item{\code{time}}{(s) time of the audio chunk start within the concatenated audio file}
#'   \item{\code{word_duration}}{(ms) duration of the word}
#'   \item{\code{c1_duration}}{(ms) duration of C1}
#'   \item{\code{c1_closure}}{(ms) duration of C1 closure}
#'   \item{\code{c1_rvot}}{(ms) duration of the C1 Release to Vowel Onset Time}
#'   \item{\code{c1_rvofft}}{(ms) duration of the C1 Release to Vowel Offset Time}
#'   \item{\code{vowel_duration}}{(ms) duration of V1}
#'   \item{\code{closure_duration}}{(ms) duration of C2 closure}
#'   \item{\code{rvot}}{(ms) duration of the C2 Release to Vowel Onset Time}
#'   \item{\code{c2_duration}}{(ms) duration of C2}
#'   \item{\code{v2_duration}}{(ms) duration of V2}
#'   \item{\code{sentence_duration}}{(s) duration of sentence}
#'   \item{\code{c1_rel}}{(s) time of C1 release}
#'   \item{\code{v_onset}}{(s) time of V1 onset}
#'   \item{\code{v_offset}}{(s) time of V1 offset}
#'   \item{\code{c2_rel}}{(s) time of C2 release}
#'   \item{\code{rel_rel}}{(ms) duration of the Release to Release interval}
#'   \item{\code{voicing_start}}{(s) time of voicing onset}
#'   \item{\code{voicing_end}}{(s) time of voicing offset}
#'   \item{\code{voicing_duration}}{(ms) duration of voiced interval}
#'   \item{\code{voiced_points}}{number of points out of 5 within the first half of C1 closure in which voicing is present}
#'   \item{\code{prompt}}{sentence stimulus}
#'   \item{\code{closure}}{(s) C1 closure onset}
#'   \item{\code{GONS}}{(s) onset of C1 closing gesture}
#'   \item{\code{max}}{(s) time of maximum displacement of C1 closing gesture}
#'   \item{\code{NOFF}}{(s) offset of C1 gesture nucleus}
#'   \item{\code{NONS}}{(s) onset of C1 gesture nucleus}
#'   \item{\code{peak1}}{(s) first tongue velocity peak}
#'   \item{\code{peak2}}{(s) second tongue velocity peak}
#'   \item{\code{c1_vot}}{(ms) Voice Onset Time of C1}
#'   \item{\code{vor}}{(ms) Vowel onset to Release}
#'   \item{\code{gons_clos}}{(ms) duration of closing gesture (to closure onset)}
#'   \item{\code{gons_max}}{(ms) duration of closing gesture (to maximum displacement)}
#'   \item{\code{nucleus_duration}}{(ms) duration of the gesture nucleus}
#'   \item{\code{rel_gons}}{(ms) C2 closing gesture onset time from C1 release}
#'   \item{\code{language}}{speaker's native language (\code{Italian}, \code{Polish})}
#'   \item{\code{sex}}{speaker's sex (\code{f}, \code{m})}
#'   \item{\code{item}}{word ID number}
#'   \item{\code{ipa}}{IPA transcription of the word}
#'   \item{\code{c1}}{first consonant (C1)}
#'   \item{\code{c1_phonation}}{voicing of C1 (\code{voiceless}, \code{voiced})}
#'   \item{\code{vowel}}{V1 and V2 (\code{a}, \code{o}, \code{u})}
#'   \item{\code{anteropost}}{backness of the vowel (\code{back}, \code{central})}
#'   \item{\code{height}}{height of the vowel (\code{high}, \code{mid}, \code{low})}
#'   \item{\code{c2}}{second consonant (C2)}
#'   \item{\code{c2_phonation}}{voicing of C2 (\code{voiceless} or \code{voiced})}
#'   \item{\code{c2_place}}{place of C2 (\code{coronal}, \code{velar})}
#'}
"kinematics_series"

#' Articulator displacement and positions at defined time points in Italian and Polish
#'
#' A dataset with displacement and velocity of tongue tip, dorsum, and root at
#' specified time points during the production of vowels and consonants in
#' Italian and Polish.
#'
#' @format A tibble with 7598 observations and 27 variables:
#' \describe{
#'   \item{\code{speaker}}{speaker's ID}
#'   \item{\code{seconds}}{(s) time within audio file}
#'   \item{\code{rec_date}}{date and time of recording}
#'   \item{\code{prompt}}{sentence stimulus}
#'   \item{\code{label}}{\code{AAA} annotation label}
#'   \item{\code{TT_displacement_sm}}{smoothed Tongue Tip displacement}
#'   \item{\code{TT_velocity}}{Tongue Tip velocity}
#'   \item{\code{TT_velocity_abs}}{absolute Tongue Tip velocity}
#'   \item{\code{TD_displacement_sm}}{smoothed Tongue Dorsum displacement}
#'   \item{\code{TD_velocity}}{Tongue Dorsum velocity}
#'   \item{\code{TD_velocity_abs}}{absolute Tongue Dorsum velocity}
#'   \item{\code{TR_displacement_sm}}{smoothed Tongue Root displacement}
#'   \item{\code{TR_velocity}}{Tongue Root velocity}
#'   \item{\code{TR_velocity_abs}}{Absolute Tongue Root velocity}
#'   \item{\code{word}}{word stimulus}
#'   \item{\code{language}}{speaker's native language (\code{Italian}, \code{Polish})}
#'   \item{\code{sex}}{speaker's sex (\code{f}, \code{m})}
#'   \item{\code{item}}{word ID number}
#'   \item{\code{ipa}}{IPA transcription of the word}
#'   \item{\code{c1}}{first consonant (C1)}
#'   \item{\code{c1_phonation}}{voicing of C1 (\code{voiceless}, \code{voiced})}
#'   \item{\code{vowel}}{V1 and V2 (\code{a}, \code{o}, \code{u})}
#'   \item{\code{anteropost}}{backness of the vowel (\code{back}, \code{central})}
#'   \item{\code{height}}{height of the vowel (\code{high}, \code{mid}, \code{low})}
#'   \item{\code{c2}}{second consonant (C2)}
#'   \item{\code{c2_phonation}}{voicing of C2 (\code{voiceless} or \code{voiced})}
#'   \item{\code{c2_place}}{place of C2 (\code{coronal}, \code{velar})}
#'}
"kinematics"

#' Tongue contours in Italian and Polish
#'
#' Coordinates of tongue contour splines of Italian and Polish at defined time points.
#'
#' @format A tibble with 319116 rows and 30 variables:
#' \describe{
#'   \item{\code{speaker}}{speaker's ID}
#'   \item{\code{seconds}}{(s) time within audio file}
#'   \item{\code{rec_date}}{date and time of recording}
#'   \item{\code{prompt}}{sentence stimulus}
#'   \item{\code{label}}{\code{AAA} annotation label}
#'   \item{\code{TT_displacement_sm}}{smoothed Tongue Tip displacement}
#'   \item{\code{TT_velocity}}{Tongue Tip velocity}
#'   \item{\code{TT_velocity_abs}}{absolute Tongue Tip velocity}
#'   \item{\code{TD_displacement_sm}}{smoothed Tongue Dorsum displacement}
#'   \item{\code{TD_velocity}}{Tongue Dorsum velocity}
#'   \item{\code{TD_velocity_abs}}{absolute Tongue Dorsum velocity}
#'   \item{\code{TR_displacement_sm}}{smoothed Tongue Root displacement}
#'   \item{\code{TR_velocity}}{Tongue Root velocity}
#'   \item{\code{TR_velocity_abs}}{Absolute Tongue Root velocity}
#'   \item{\code{fan_line}}{number of fan line}
#'   \item{\code{X}}{x coordinate}
#'   \item{\code{Y}}{y coordinate}
#'   \item{\code{word}}{word stimulus}
#'   \item{\code{language}}{speaker's native language (\code{Italian}, \code{Polish})}
#'   \item{\code{sex}}{speaker's sex (\code{f}, \code{m})}
#'   \item{\code{item}}{word ID number}
#'   \item{\code{ipa}}{IPA transcription of the word}
#'   \item{\code{c1}}{first consonant (C1)}
#'   \item{\code{c1_phonation}}{voicing of C1 (\code{voiceless}, \code{voiced})}
#'   \item{\code{vowel}}{V1 and V2 (\code{a}, \code{o}, \code{u})}
#'   \item{\code{anteropost}}{backness of the vowel (\code{back}, \code{central})}
#'   \item{\code{height}}{height of the vowel (\code{high}, \code{mid}, \code{low})}
#'   \item{\code{c2}}{second consonant (C2)}
#'   \item{\code{c2_phonation}}{voicing of C2 (\code{voiceless} or \code{voiced})}
#'   \item{\code{c2_place}}{place of C2 (\code{coronal}, \code{velar})}
#'}
"tongue_contours"

#' Tracegram data of Italian and Polish vowels
#'
#' First derivative maximum and minimum trakectories of the electroglottographic
#' data during the production of vowels in Italian and Polish.
#'
#' @format A tibble with 16754 observation and 23 variables:
#' \describe{
#'   \item{\code{speaker}}{speaker's ID}
#'   \item{\code{file}}{audio chunk file name}
#'   \item{\code{date}}{date and time of recording}
#'   \item{\code{word}}{word stimulus}
#'   \item{\code{time}}{(seconds) time within audio chunk file}
#'   \item{\code{rel.time}}{(seconds) time from Vowel onset}
#'   \item{\code{proportion}}{proportion of vowel duration}
#'   \item{\code{maximum}}{dEGG maximum}
#'   \item{\code{minimum}}{dEGG minimum}
#'   \item{\code{closed_quotient}}{close quotient}
#'   \item{\code{peaks_ratio}}{peaks ratio}
#'   \item{\code{language}}{speaker's native language (\code{Italian}, \code{Polish})}
#'   \item{\code{sex}}{speaker's sex (\code{f}, \code{m})}
#'   \item{\code{item}}{word ID number}
#'   \item{\code{ipa}}{IPA transcription of the word}
#'   \item{\code{c1}}{first consonant (C1)}
#'   \item{\code{c1_phonation}}{voicing of C1 (\code{voiceless}, \code{voiced})}
#'   \item{\code{vowel}}{V1 and V2 (\code{a}, \code{o}, \code{u})}
#'   \item{\code{anteropost}}{backness of the vowel (\code{back}, \code{central})}
#'   \item{\code{height}}{height of the vowel (\code{high}, \code{mid}, \code{low})}
#'   \item{\code{c2}}{second consonant (C2)}
#'   \item{\code{c2_phonation}}{voicing of C2 (\code{voiceless} or \code{voiced})}
#'   \item{\code{c2_place}}{place of C2 (\code{coronal}, \code{velar})}
#'}
"tracegram"

#' Wavegram data of Italian and Polish vowels
#'
#' First derivative amplitude of the electroglottographic signal during the production
#' of vowels in Italian and Polish.
#'
#' @format A data frame with 2212533 rows and 21 variables:
#' \describe{
#'   \item{\code{speaker}}{speaker's ID}
#'   \item{\code{file}}{audio chunk file name}
#'   \item{\code{date}}{date and time of recording}
#'   \item{\code{word}}{word stimulus}
#'   \item{\code{rel_time}}{(seconds) time from Vowel onset}
#'   \item{\code{time}}{(seconds) time within audio chunk file}
#'   \item{\code{sequence}}{index of glottal cycle within vowel duration}
#'   \item{\code{sample}}{sample within glottal cycle}
#'   \item{\code{amplitude}}{relative amplitude of the electroglottographic signal}
#'   \item{\code{language}}{speaker's native language (\code{Italian}, \code{Polish})}
#'   \item{\code{sex}}{speaker's sex (\code{f}, \code{m})}
#'   \item{\code{item}}{word ID number}
#'   \item{\code{ipa}}{IPA transcription of the word}
#'   \item{\code{c1}}{first consonant (C1)}
#'   \item{\code{c1_phonation}}{voicing of C1 (\code{voiceless}, \code{voiced})}
#'   \item{\code{vowel}}{V1 and V2 (\code{a}, \code{o}, \code{u})}
#'   \item{\code{anteropost}}{backness of the vowel (\code{back}, \code{central})}
#'   \item{\code{height}}{height of the vowel (\code{high}, \code{mid}, \code{low})}
#'   \item{\code{c2}}{second consonant (C2)}
#'   \item{\code{c2_phonation}}{voicing of C2 (\code{voiceless} or \code{voiced})}
#'   \item{\code{c2_place}}{place of C2 (\code{coronal}, \code{velar})}
#'}
"wavegram"
