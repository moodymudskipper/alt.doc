#' Parse the NAMESPACE file
#'
#' Parse a NAMESPACE file into a named list containing :
#'
#' * imports: A list of character vectors, length 1 for import(PKG) and length 2 for importFrom(PKG, FUN)
#' * exports: A character vector of exported object names
#' * exportPatterns: A character vector
#' * importClasses: A list
#' * importMethods: A list
#' * exportClasses: A character vector
#' * exportMethods: A character vector
#' * exportClassPatterns: A character vector
#' * dynlibs: A string
#' * nativeRoutines: A list
#' * S3methods: A matrix
#'
#' @param package the name of a package
#' @param package.lib path to the library, such as an element of `.libPaths()` or
#'   a folder containing packages under development
#' @examples
#' parseNamespaceFile("stats", .libPaths()[[2]])
parseNamespaceFile <- function (package, package.lib, mustExist = TRUE) {
  NULL
}
