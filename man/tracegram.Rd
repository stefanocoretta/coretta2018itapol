% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{tracegram}
\alias{tracegram}
\title{Tracegram data of Italian and Polish vowels}
\format{A tibble with 16754 observation and 23 variables:
\describe{
  \item{\code{speaker}}{speaker's ID}
  \item{\code{file}}{audio chunk file name}
  \item{\code{date}}{date and time of recording}
  \item{\code{word}}{word stimulus}
  \item{\code{time}}{(seconds) time within audio chunk file}
  \item{\code{rel.time}}{(seconds) time from Vowel onset}
  \item{\code{proportion}}{proportion of vowel duration}
  \item{\code{maximum}}{dEGG maximum}
  \item{\code{minimum}}{dEGG minimum}
  \item{\code{closed_quotient}}{close quotient}
  \item{\code{peaks_ratio}}{peaks ratio}
  \item{\code{language}}{speaker's native language (\code{Italian}, \code{Polish})}
  \item{\code{sex}}{speaker's sex (\code{f}, \code{m})}
  \item{\code{glottocode}}{language Glottocode}
  \item{\code{item}}{word ID number}
  \item{\code{ipa}}{IPA transcription of the word}
  \item{\code{c1}}{first consonant (C1)}
  \item{\code{c1_phonation}}{voicing of C1 (\code{voiceless}, \code{voiced})}
  \item{\code{vowel}}{V1 and V2 (\code{a}, \code{o}, \code{u})}
  \item{\code{anteropost}}{backness of the vowel (\code{back}, \code{central})}
  \item{\code{height}}{height of the vowel (\code{high}, \code{mid}, \code{low})}
  \item{\code{c2}}{second consonant (C2)}
  \item{\code{c2_phonation}}{voicing of C2 (\code{voiceless} or \code{voiced})}
  \item{\code{c2_place}}{place of C2 (\code{coronal}, \code{velar})}
}}
\usage{
tracegram
}
\description{
First derivative maximum and minimum trakectories of the electroglottographic
data during the production of vowels in Italian and Polish.
}
\keyword{datasets}
