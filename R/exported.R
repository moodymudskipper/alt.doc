#' Open or create a new documentation file
#'
#' These functions are meant to be called from any environment, not necessarily
#' while actively developing {alt.doc}.
#'
#' * `alt.doc::new_doc(f)` creates an R script in the {alt.doc} package.
#' * `alt.doc::sync()` rebuilds the doc and reinstalls the package silently.
#' * `alt.doc::pr()` commit changes to a newly created branch and opens a page to PR to the repo,
#'  thens checks out the main branch back.
#'
#' The environment of this function is set to .BaseNamespaceEnv to avoid
#' conflicts
#'
#' @param f function name, unquoted
#' @param alt.doc.path path to {alt.doc}'s package folder
#' @param message commit message
#' @export
new_doc <- function(f, alt.doc.path = getOption("alt.doc.path")) {
  f_lng <- substitute(f)
  f_val <- eval.parent(f)
  if (is.call(f_lng)) {
    f_name_short <- as.character(f_lng[[3]])
    f_name_long <- deparse(f_lng)
  } else {
    f_name_short <- as.character(f_lng)
    f_name_long <- paste0(getNamespaceName(environment(f)), "::", f_name_short)
  }
  # FIXME: if `f` is already used as an alias we should open the relevant page
  # rather than creating a new one
  path <- file.path(alt.doc.path, "R", paste0(f_name_short, ".R"))
  if (file.exists(path)) {
    asNamespace("rstudioapi")$navigateToFile(path)
    return(invisible(NULL))
  }

  formals(f_val) <- lapply(formals(f_val), function(x) quote(expr = ))
  fun_code <- deparse(args(f_val))
  fun_code <- paste(head(fun_code, -1), collapse = "\n")
  fun_code <- paste0(fun_code, "{\n  NULL\n}")
  code <- sprintf(
    "#' %s\n#'\n#' @inheritParams %s\n%s <- %s\n",
    f_name_short,
    f_name_long,
    f_name_short,
    fun_code
  )

  cat(code, file = path)
  asNamespace("rstudioapi")$navigateToFile(path)
  invisible(NULL)
}

# since we override base functions set its env to base to avoid conflicts
environment(new_doc) <- base::.BaseNamespaceEnv

#' @export
#' @rdname new_doc
sync <- function(alt.doc.path = getOption("alt.doc.path")) {
  devtools::document(alt.doc.path, quiet = TRUE)
  devtools::install(alt.doc.path, quiet = TRUE)
  # necessary to make the help files directly available
  unloadNamespace("alt.doc")
  requireNamespace("alt.doc", quietly = TRUE)
}

#' @export
#' @rdname new_doc
pr <- function(branch, message = sprintf("document %s", branch), alt.doc.path = getOption("alt.doc.path")) {
  withr::local_dir(alt.doc.path)
  usethis::pr_init(branch)
  gert::git_commit(msg)
  usethis::pr_push()
  gert::git_branch_checkout("master")
}

