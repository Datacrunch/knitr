\name{set_parent}
\alias{set_parent}
\title{Specify the parent document of child documents}
\usage{
set_parent(parent)
}
\arguments{
  \item{parent}{path to the parent document (relative to
  the current child document)}
}
\value{
  The preamble is extracted and stored to be used later
  when the complete output is written.
}
\description{
  This function extracts the LaTeX preamble of the parent
  document to use for the child document, so that the child
  document can be compiled as an individual document.
}
\details{
  When the preamble of the parent document also contains
  code chunks and inline R code, they will be evaluated as
  if they were in this child document. For examples, when
  \pkg{knitr} hooks or other options are set in the
  preamble of the parent document, it will apply to the
  child document as well.
}
\note{
  Obviously this function is only useful when the output
  format is LaTeX. This function only works when the child
  document is compiled in a standalone mode using
  \code{\link{knit}()} (instead of being called in
  \code{\link{knit_child}()}); when the parent document is
  compiled, this function in the child document will be
  ignored.
}
\examples{
## can use, e.g. \\Sexpr{set_parent('parent_doc.Rnw')} or

## <<setup-child, include=FALSE>>=
## set_parent('parent_doc.Rnw')
##
}
\references{
  \url{http://yihui.name/knitr/demo/child/}
}
