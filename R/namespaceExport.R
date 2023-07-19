#' Export objects in a namescape
#'
#' For a given unlocked namespace `ns`, export the previously unexported objects named as `vars`.
#' Note that namespace are almost always locked and that there is no way to unlock them with base R.
#' The only moment a namespace is unlocked is when the `.onLoad()` function is called. However
#' the package {rlang} provides a function `env::unlock()` that allows unlocking environments.
#'
#' @param ns An unlocked namespace
#' @param vars A character vector
#' @examples
#' \dontrun{
#' # build toy namespace
#' ns <- asNamespace("utils")
#' rlang::env_unlock(ns)
#' "head.array" %in% getNamespaceExports(ns)
#' base::namespaceExport(ns, "head.array")
#' "head.array" %in% getNamespaceExports(ns)
#' }
namespaceExport <- function (ns, vars) {
  NULL
}
