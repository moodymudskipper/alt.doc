#' Check if a package has a NAMESPACE file
#'
#' `packageHasNamespace()` does not indicate if the package has a namespace
#' (all now do), rather if it has a NAMESPACE file, which base and some legacy
#' packages do not.
#'
#' @param package string naming the package/namespace to load.
#' @param package.lib	character vector specifying library, such as provided by ` .libPaths()`
#' @return a logical vector as long as package.lib
#' @examples
#' packageHasNamespace("alt.doc", .libPaths())
#' packageHasNamespace("stats", .libPaths())
#' packageHasNamespace("base", .libPaths())
#' packageHasNamespace("not a package name", .libPaths())
packageHasNamespace <- function (package, package.lib) {
  NULL
}
