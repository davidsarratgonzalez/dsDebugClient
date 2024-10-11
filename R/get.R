#' Retrieve Object from DataSHIELD Server
#'
#' This function requests an object from the DataSHIELD server for debugging purposes.
#'
#' @param object The name of the object to retrieve for debugging.
#' @return The requested object from all connected servers, or error messages if encountered.
#' @export
debug.get <- function(object, conns = NULL) {
  datashield.aggregate(
    conns,
    paste0("debugGetDS(", object, ")"),
    async = FALSE,
    return_errors = TRUE
  )
}
