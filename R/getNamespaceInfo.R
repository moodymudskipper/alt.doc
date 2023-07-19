#' getNamespaceInfo
#'
#' Fetch a component of the namespace info. `.getNamespaceInfo()` and `getNamespaceInfo()`
#'   are very similar, the difference is that `getNamespaceInfo()` can take a namespace
#'   name rather than an environment and fails if provided "base" or the base namespace
#'   (it is thus slower due to those overheads).
#'
#' @param ns for `getNamespaceInfo()` a namespace or a string, for `.getNamespaceInfo()` a namespace
#' @param which A string, the name of the component to extract. In non artificial cases
#'   should be one of "dynlibs", "exports", "imports", "lazydata", "nativeRoutines",
#'  "path", "S3methods", "spec"
#'
#' @section Components:
#'
#' Technically any `getNamespaceInfo()` could access any item define in `ns[[".__NAMESPACE__."]]`
#'   (e.g. through `setNamespaceInfo()`) but in practice the namespace info is made
#'   from the following components:
#'
#' **DLLs**
#'
#' The only optional item, present only if the package contains compiled code.
#'
#' A one element list, generally named as the namespace (for some
#'     reason for the package {data.table} it is named "datatable" without the "."),
#'     containing a "DLLInfo" object.
#'
#' "DLLInfo" objects are lists containing :
#'   * name : A string, identical to the name of `DLLs`
#'   * path : A path to a ".so" file
#'   * dynamicLookup : A boolean
#'   * handle : A pointer
#'   * info : A pointer
#'
#' **dynlib**
#'
#' Either an empty character if `DLLs` is absent, or a string containing `DLLs`'s
#' name and named as "".
#'
#' **exports**
#'
#' An environment, child of the base environment, containing the names of the
#' package's exported functions, stored as strings named as themselves.
#'
#' **imports**
#'
#' A list containing elements named as the packages imported from. Each element
#' is a vector of object names named as itself.
#'
#' An exception is the first element named "base", which seems to always be set to `TRUE`.
#'
#' **lazydata**
#'
#' An environment containing the datasets to be lazily loaded, with a name attribute
#' named as "lazydata:namespace.name" (where "namespace.name" is to be replaced by the namespace name)
#'
#' **nativeRoutines**
#'
#' An empty list if `DLLs` is absent or a one element list, named as `DLLs` and
#' containing the name of the C routines defined in the package.
#'
#' **path**
#'
#' The path to the package folder in the library.
#'
#' **S3methods**
#'
#' A 4 column matrix describing the S3 methods registered by the package.
#' The columns are not named but describe in that order the generic's name,
#' the S3 class, and the S3 method's name- the 4th column seems to always be
#' `NA_character_`, it might be there for historical reasons.
#'
#' **spec**
#'
#' A named character vector with elements :
#'
#' * name: the package's name
#' * version : the package's version, for base packages the R version
#'
#' @section History:
#' `.getNamespaceInfo()` was introduced in R 3.2.0 with the following note:
#'
#' "New function `.getNamespaceInfo()`, a no-check version of `getNamespaceInfo()`
#'   mostly for internal speedups."
#'
#' @examples
#' getNamespaceInfo("stats", "spec")
#'
#' # the code
#' getNamespaceInfo
#' .getNamespaceInfo
getNamespaceInfo <- function (ns, which) {
  NULL
}


#' @rdname getNamespaceInfo
.getNamespaceInfo <- function (ns, which) {
  NULL
}
