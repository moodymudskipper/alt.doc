#' Get a namespace from its name
#'
#' These are 4 very similar functions. Note: we needed to mispell `..getNamespace`
#'   to get around a `devtools::document()` bug
#'
#' * `.getNamespace()` is the lowest level version, it returns the environment representing the name space name.
#'   It returns `NULL` if the namespace wasn't not loaded
#' * `getNamespace()` returns the environment representing the name space name.
#'   The namespace is loaded if necessary and the function crashes if it can't be loaded.
#' * `..getNamespace()` is similar but warns instead of failing and falls back on `.GlobalEnv`,
#'   the warning can be turned of by setting the environment variable "_R_NO_REPORT_MISSING_NAMESPACES_"
#'   to "false" or setting `where` to "unknown" if the environment variable wasn't set.
#' * `asNamespace()` is a wrapper around `getNamespace()` that can be provided a
#'   namespace directly (it is then returned as is) and has an argument `base.OK`
#'   to fail if `ns` refers to the base namespace.
#'
#' @param ns A string, a symbol or a namespace
#' @param name A string or a symbol
#' @param where A string naming the object mentioned in the warning, can be set to "unknown" to suppress the warning (unless
#'   the environment variable "_R_NO_REPORT_MISSING_NAMESPACES_" was set),
#' @param base.OK A boolean, whether to fail if `ns` refers to the base namespace
#'
#' @seealso the inverse function `environmentName()`
#'
#' @examples
#' nsName <- "stats"
#' (ns <- asNamespace(nsName))
getNamespace <- function (name) {
  NULL
}

#' @name getNamespace
asNamespace <- function (ns, base.OK = TRUE) {
 NULL
}

#' @name getNamespace
.getNamespace <- function (name) {
 NULL
}

#' @name getNamespace
..getNamespac <- function (name, where) {
 NULL
}
