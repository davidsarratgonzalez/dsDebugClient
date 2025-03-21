% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.R
\name{ds.debug.tail}
\alias{ds.debug.tail}
\title{Retrieve Tail of Object from DataSHIELD Server}
\usage{
ds.debug.tail(object, n = 6, conns = NULL)
}
\arguments{
\item{object}{The name of the dataframe to retrieve the tail for debugging.}

\item{n}{The number of rows to return (default: 6)}

\item{conns}{DSI connection object(s)}
}
\value{
The last n rows of the requested dataframe from all connected servers, or error messages if encountered.
}
\description{
This function requests the last n rows of a dataframe from the DataSHIELD server for debugging purposes.
}
