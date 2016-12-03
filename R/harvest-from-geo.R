#' return pubmed ids associated with GEO accession.
#'
#' Scrapes the GEO accession viewer page for a given accession
#' for associated pubmed ids. requires internet connection.
#'
#' @param acc GEO accession
#' @return character vector of associated pubmed ids
#'
#' @export
harvest_pmids_from_geo <- function(acc, verbose = F) {
    # validate input
    if(is.null(acc)) stop("acc cannot be null.")
    if(is.na(acc)) return(NA_character_)
    stopifnot(stringr::str_detect(acc, "[GSE|GPL|GSM]\\d+"))

    url <- "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi"
    r <- httr::GET(url, query = list(acc = acc))

    # there is a 'span' element with class 'pubmed_id' with 'a' element children
    # whose text each contain an associated pubmed id as character vector.
    h <- httr::content(r, encoding = "UTF-8")
    pmid_span <- rvest::html_node(h, css = ".pubmed_id")
    aref_children <- rvest::html_children(pmid_span)
    pubmed_ids <- rvest::html_text(aref_children)

    if(verbose) {
        cat("#", deparse(substitute(httr::GET(url, query = list(acc = acc)))), '\n')
        cat(paste0("# ", capture.output(r), '\n'))
    }
    pubmed_ids
}
