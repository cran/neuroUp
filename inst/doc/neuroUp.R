## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(neuroUp)

## -----------------------------------------------------------------------------
# load feedback.csv data located at local system 
feedback_csv <- (system.file("extdata/feedback.csv", package = "neuroUp"))

# use read_csv function to load csv-file as tibble
feedback_data <- readr::read_csv(feedback_csv)

## ----eval=FALSE---------------------------------------------------------------
#  taskname_data <- readr::read_csv("path/to/filename.csv")

## -----------------------------------------------------------------------------
set.seed(1234)

feedback_estim <- estim_diff(feedback_data,
                             c("mfg_learning", "mfg_application"), 20:271,
                             20, "Feedback middle frontal gyrus")

## ----out.width="500px", fig.dim=c(5,3), dpi=300-------------------------------
feedback_estim$fig_diff

## ----out.width="500px", fig.dim=c(5,3), dpi=300-------------------------------
feedback_estim$fig_nozero

## ----out.width="500px", fig.dim=c(5,3), dpi=300-------------------------------
feedback_estim$fig_cohens_d

## ----out.width="500px", fig.dim=c(5,3), dpi=300-------------------------------
feedback_estim$fig_d_nozero

## -----------------------------------------------------------------------------
feedback_estim$tbl_select

## -----------------------------------------------------------------------------
feedback_estim$tbl_total

## -----------------------------------------------------------------------------
# load gambling.csv data located at local system 
gambling_csv <- (system.file("extdata/gambling.csv", package = "neuroUp"))

# use read_csv function to load csv-file as tibble
gambling_data <- readr::read_csv(gambling_csv)

## -----------------------------------------------------------------------------
set.seed(1234)

gambling_estim <- estim_corr(gambling_data,
                             c("lnacc_self_winvsloss", "age"), 20:221,
                             20, "Gambling NAcc correlation w/ age")

## ----out.width="500px", fig.dim=c(5,3), dpi=300-------------------------------
gambling_estim$fig_corr

## ----out.width="500px", fig.dim=c(5,3), dpi=300-------------------------------
gambling_estim$fig_corr_nozero

## -----------------------------------------------------------------------------
gambling_estim$tbl_select

## -----------------------------------------------------------------------------
gambling_estim$tbl_total

