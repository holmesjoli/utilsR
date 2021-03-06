% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/config.R
\name{update_yaml}
\alias{update_yaml}
\title{Exports yaml}
\usage{
update_yaml(config, pth)
}
\arguments{
\item{config}{the nested list to output as a configuration file}

\item{pth}{the path to the yaml file}
}
\description{
Exports a yaml file
}
\examples{
\dontrun{
pth <- "./tests/testthat/test.yaml"
config <- read_yaml(pth)
config$test3 <- 3
update_yaml(pth)
}
}
