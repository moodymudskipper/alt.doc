#' Does the object have a class attribute ?
#'
#' A primitive function that tests efficiently the existence of a class attribute.
#' Note that `class()` doesn't necessarily return the class attribute but might
#' return the so called "implicit class". Use `oldClass()` or `attr(x, "class")`
#' to fetch the class attribute.
#'
#' The term `object` is a bit unfortunate here as it is widely used in the official
#' doc regardless of class attribute, e.g. in `?length` `x` is described as
#' "an R object" and the title of the canonical help page for `is.object`
#' is an oxymoron. It might be clearer to talk about classless and classed objects.
#' @inheritParams base::is.object
is.object <- function(x) {
  NULL
}
