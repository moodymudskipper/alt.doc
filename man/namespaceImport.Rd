% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/namespaceImport.R
\name{namespaceImport}
\alias{namespaceImport}
\alias{namespaceImportFrom}
\alias{namespaceImportClasses}
\alias{namespaceImportMethods}
\title{namespaceImport}
\usage{
namespaceImport(self, ..., from = NULL, except = character(0L))

namespaceImportFrom(
  self,
  ns,
  vars,
  generics,
  packages,
  from = "non-package environment",
  except = character(0L)
)

namespaceImportClasses(self, ns, vars, from = NULL)

namespaceImportMethods(self, ns, vars, from = NULL)
}
\arguments{
\item{self}{namespace environment.}

\item{...}{namespaces or named of namespaces}

\item{except}{character vector naming symbols to exclude from the import, particularly useful when vars is missing.}

\item{ns}{string or namespace environment.}

\item{vars}{character vector containing the names of the objects to import,
if missing all objects are considered}

\item{generics}{optional character vector.}

\item{packages}{vector of package names parallel to generics.}
}
\description{
WIP: Add functions to the imports of a package. This populates the "imports:PKG"
environment, that is the parent of the namespace environment, which can be accessed
with \code{parent.env(asNamespace("PKG"))}.
}
