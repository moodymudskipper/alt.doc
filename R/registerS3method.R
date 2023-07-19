#' Register S3 Methods
#'
#' Very similar to `.S3method()`, which is properly documented and close wrapper
#' around `registerS3method()`. The difference is that `method` is optional for `.S3method()`
#' and `envir` can only be set in `registerS3method()`.
#'
#' @param genname a character string naming an S3 generic function.
#' @param class a character string naming an S3 class.
#' @param method a character string or function giving the S3 method to be registered.
#' @param envir The environment where to fetch `method` from if it's a string (ignored otherwise)
registerS3method <- function (genname, class, method, envir = parent.frame()) {
  NULL
}
