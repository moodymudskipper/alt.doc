#' isNamespace
#'
#' A namespace is the environment that contains all the functions defined in a package.
#' `isNamespace()` checks if an environment is a namespace, and always returns `FALSE`
#' Note that `isNamespace()` never returns `TRUE` when `ns` is a string, even if it is the name of a namespace.
#'
#' `isNamespace()` seems to check if `ns` is an environment that contains a `'.__NAMESPACE__.'`
#' object that is an environment and contains a list with a `spec` character
#' element of non zero length (see example). Additionally, some packages such as
#' `base` don't contain a `'.__NAMESPACE__.'` object and seem to be special cased.
#'
#' Indeed `isNamespace(.BaseNamespaceEnv)` is `TRUE` but `isNamespace(rlang::env_clone(.BaseNamespaceEnv))` is `FALSE`
#'
#' @param ns An object.
#' @examples
#' ns <- asNamespace("stats")
#' isNamespace(ns) # TRUE
#' isNamespace(new.env()) # FALSE
#' isNamespace("base") # FALSE
#'
#' as.list(ns[[".__NAMESPACE__."]])
#'
#' test <- new.env()
#' test[[".__NAMESPACE__."]] <- as.environment(list(spec = character(1)))
#' isNamespace(test) # TRUE
isNamespace <- function (ns) {
  NULL
}
