#' Base environments
#'
#' * `.BaseNamespaceEnv` is the namespace environment for the base package, it is
#' a child of the global environment and an indirect parent to all other
#' naturally defined namespaces.
#' * The  `baseenv()` function is a primitive that returns the environment of the base package,
#. it is a child of the empty environment (`emptyenv()`)  at the top of the search path (in other words,
#' an ancestor of the global environment). It contains rigorously the same elements
#' as `.BaseNamespaceEnv` and modifying one applies the same modifications to the
#' other (a behavior that doesn't affect other packages)
#' * `isBaseNamespace()` checks if the input is identical to `.BaseNamespaceEnv`.
#'
#' {rlang} has `rlang::base_env()` which is completely identical to `base.env()`,
#' but respecting tidyverse naming conventions.
#'
#' @inheritParams base::isBaseNamespace
#' @return A boolean
#' @name base-environments
isBaseNamespace <- function (ns) {
  NULL
}

#' @rdname base-environments
baseenv <- function() {
  NULL
}

#' @rdname base-environments
.BaseNamespaceEnv <- NULL
