% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/hypothesis_test.R
\name{hypothesis_test}
\alias{hypothesis_test}
\title{Performs Mann-Witney U test on each group vs. control, each bug}
\usage{
hypothesis_test(d, group, otuname_col = "bug", value_col = "value",
  base_group = "Control", alpha = 0.05)
}
\arguments{
\item{d}{Data frame of data.}

\item{group}{Name of data frame column containing the group information.}

\item{otuname_col}{Name of data frame column containing OTU names.}

\item{value_col}{Name of column containing normalized proportions for each of
the otunames.}

\item{base_group}{Name of the level in \code{group} indicating baseline
measurements.}

\item{alpha}{alpha level to conduct the Mann-Witney U test.}
}
\value{
the same input data frame d, but with a new column called "changed".
This column is a factor with three levels: "no change" if the hypothesis test
was not significant, and either "decreased" or "increased" if the test was
significant. The sign of the change is calculated by the difference in means
for data from the tested group and data from the \code{base_group}.
}
\description{
\code{hypothesis_test} performs Mann-Witney U test, using
\code{\link{wilcox.test}} for each OTU in the data frame \code{d}. Each level
of \code{group}, excluding the \code{base_group} level, is tested against the
\code{base_group} level at an alpha level of 0.05 for evidence against the
null hypothesis that distributions of the the normalized counts for
\code{base_group} and the tested group do not differ by a location shift. The
alternative is two-sided.
}
\details{
The data frame d is assumed to be in \emph{long} format.
}

