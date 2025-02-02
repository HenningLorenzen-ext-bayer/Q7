% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{expose_private}
\alias{expose_private}
\title{Expose Private Parts of an Instance}
\usage{
expose_private(inst)
}
\arguments{
\item{inst}{instance; <Q7instance>}
}
\value{
instance; <Q7instance>
}
\description{
Creates a reference to the private environment inside an object instance
}
\examples{

TypeOne <- type(function(arg){
  private[pvt_val] <- 2
})

instOne <- TypeOne(1)
expose_private(instOne)

instOne$.private
instOne$.private$pvt_val
}
