context("harvesting form geo")

test_that("harvesting handles inputs and outputs properly", {
    x <- harvest_pmids_from_geo("GSE42528")
    expect_equal(x, c("24766815", "24952590"))

    # handles NA
    x <- harvest_pmids_from_geo(NA_character_)
    expect_equal(x, NA_character_)
    # handles null
    expect_error(harvest_pmids_from_geo(NULL))

    # invalid accession
    expect_error(harvest_pmids_from_geo("GSN1"))

})
