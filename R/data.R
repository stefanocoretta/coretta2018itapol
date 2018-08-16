#' Acousics and articulatory durational measures of Italian and Polish
#'
#' A dataset with measures from acoustics and articulatory data of Italian and Polish.
#' The dataset contains durational measures of segments, voicing, and tongue gestures.
#'
#' @docType dataset
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
