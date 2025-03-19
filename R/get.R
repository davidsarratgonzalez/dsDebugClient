#' Retrieve Object from DataSHIELD Server
#'
#' This function requests an object from the DataSHIELD server for debugging purposes.
#'
#' @param object The name of the object to retrieve for debugging.
#' @return The requested object from all connected servers, or error messages if encountered.
#' @export
ds.debug.get <- function(object, conns = NULL) {
  datashield.aggregate(
    conns,
    paste0("debugGetDS(", object, ")")
  )
}


#' Retrieve Head of Object from DataSHIELD Server
#'
#' This function requests the first n rows of a dataframe from the DataSHIELD server for debugging purposes.
#'
#' @param object The name of the dataframe to retrieve the head for debugging.
#' @param n The number of rows to return (default: 6)
#' @param conns DSI connection object(s)
#' @return The first n rows of the requested dataframe from all connected servers, or error messages if encountered.
#' @export
ds.debug.head <- function(object, n = 6, conns = NULL) {
  datashield.aggregate(
    conns,
    paste0("debugHeadDS(", object, ", ", n, ")")
  )
}

#' Retrieve Tail of Object from DataSHIELD Server
#'
#' This function requests the last n rows of a dataframe from the DataSHIELD server for debugging purposes.
#'
#' @param object The name of the dataframe to retrieve the tail for debugging.
#' @param n The number of rows to return (default: 6)
#' @param conns DSI connection object(s)
#' @return The last n rows of the requested dataframe from all connected servers, or error messages if encountered.
#' @export
ds.debug.tail <- function(object, n = 6, conns = NULL) {
  datashield.aggregate(
    conns,
    paste0("debugTailDS(", object, ", ", n, ")")
  )
}
