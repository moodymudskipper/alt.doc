#' loadingNamespaceInfo
#'
#' Checks the existence of the `__LoadingNamespaceInfo__` object in the callers and fails if not found
#' @examples
#' try(loadingNamespaceInfo())
#' fun <- function() {
#'   `__LoadingNamespaceInfo__` <- "test"
#'   loadingNamespaceInfo()
#' }
loadingNamespaceInfo <- function() {
  NULL
}
