#' namespaceImport
#'
#' WIP: Add functions to the imports of a package. This populates the "imports:PKG"
#' environment, that is the parent of the namespace environment, which can be accessed
#' with `parent.env(asNamespace("PKG"))`.
#'
#' @inheritParams base::namespaceImport
#' @param self	namespace environment.
#' @param ... namespaces or named of namespaces
#' @param ns string or namespace environment.
#' @param vars character vector containing the names of the objects to import,
#'   if missing all objects are considered
#' @param generics optional character vector.
#' @param packages vector of package names parallel to generics.
#' @param except character vector naming symbols to exclude from the import, particularly useful when vars is missing.
namespaceImport <- function (self, ..., from = NULL, except = character(0L)) {
  NULL
}

#' @name namespaceImport
namespaceImportFrom <- function (self, ns, vars, generics, packages, from = "non-package environment", except = character(0L)) {
  NULL
}

#' @name namespaceImport
namespaceImportClasses <- function (self, ns, vars, from = NULL) {
  NULL
}

#' @name namespaceImport
namespaceImportMethods <- function (self, ns, vars, from = NULL) {
  NULL
}
