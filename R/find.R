#' find gsms by searching for match in whole table
#' @param x pattern to be used in stringr::str_detect
#' @export
find_in_gsm <- function(x) {
    # make lookup table
    d <- scerden.geometadb::gsm
    lookup <- tidyr::gather(d, variable, value, -gsm)
    lookup <- dplyr::mutate(lookup, value = tolower(value))
    finds <- purrr::map(x, ~dplyr::filter(lookup, stringr::str_detect(value, .x))[["gsm"]])
    finds <- purrr::map(finds, unique)
    purrr::map(finds, ~dplyr::filter(d, gsm %in% .x))
}


#' find gses by searching for match in whole table
#' @param x pattern to be used in stringr::str_detect
#' @export
find_in_gse <- function(x) {
    # make lookup table
    d <- scerden.geometadb::gse
    lookup <- tidyr::gather(d, variable, value, -gse)
    lookup <- dplyr::mutate(lookup, value = tolower(value))
    finds <- purrr::map(x, ~dplyr::filter(lookup, stringr::str_detect(value, .x))[["gse"]])
    finds <- purrr::map(finds, unique)
    purrr::map(finds, ~dplyr::filter(d, gse %in% .x))
}


#' find gses by searching for match in whole table
#' @param x pattern to be used in stringr::str_detect
#' @export
find_in_gpl <- function(x) {
    # make lookup table
    d <- scerden.geometadb::gpl
    lookup <- tidyr::gather(d, variable, value, -gpl)
    lookup <- dplyr::mutate(lookup, value = tolower(value))
    finds <- purrr::map(x, ~dplyr::filter(lookup, stringr::str_detect(value, .x))[["gpl"]])
    finds <- purrr::map(finds, unique)
    purrr::map(finds, ~dplyr::filter(d, gpl %in% .x))
}



