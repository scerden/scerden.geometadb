
<!-- README.md is generated from README.Rmd. Please edit that file -->
scerden.geometadb
=================

R data pkg containing tables from `geometadb.sqlite` provided by [GEOmetadb](https://www.bioconductor.org/packages/release/bioc/html/GEOmetadb.html) bioconductor pkg.

This pkg makes available the following tables:

``` r
suppressPackageStartupMessages(library(tidyverse))
#> Conflicts with tidy packages ----------------------------------------------
library(scerden.geometadb)
glimpse(gds)
#> Observations: 122
#> Variables: 18
#> $ gds                      <chr> "GDS1115", "GDS1116", "GDS91", "GDS92...
#> $ ID                       <dbl> 711, 712, 48, 49, 50, 51, 466, 1307, ...
#> $ title                    <chr> "Genetic variation in gene expression...
#> $ description              <chr> "Expression profiling of parental str...
#> $ type                     <chr> "Expression profiling by array", "Exp...
#> $ pubmed_id                <dbl> 1.604e+23, 1.604e+23, 1.192e+07, 1.19...
#> $ gpl                      <chr> "GPL118", "GPL118", "GPL118", "GPL118...
#> $ platform_organism        <chr> "Saccharomyces cerevisiae", "Saccharo...
#> $ platform_technology_type <chr> "spotted DNA/cDNA", "spotted DNA/cDNA...
#> $ feature_count            <int> 7085, 7085, 7085, 7085, 7085, 7085, 6...
#> $ sample_organism          <chr> "Saccharomyces cerevisiae", "Saccharo...
#> $ sample_type              <chr> "RNA", "RNA", "RNA", "RNA", "RNA", "R...
#> $ channel_count            <int> 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2...
#> $ sample_count             <int> 131, 131, 40, 40, 12, 11, 24, 30, 30,...
#> $ value_type               <chr> "log ratio", "log ratio", "log ratio"...
#> $ gse                      <chr> "GSE1990", "GSE1990", "GSE37", "GSE37...
#> $ order                    <chr> "none", "none", "none", "none", "none...
#> $ update_date              <date> 2005-10-24, 2005-10-24, 2003-04-08, ...
glimpse(gsm)
#> Observations: 44,396
#> Variables: 32
#> $ gsm                    <chr> "GSM16985", "GSM16986", "GSM16987", "GS...
#> $ ID                     <dbl> 15482, 15483, 15484, 15485, 26759, 2676...
#> $ title                  <chr> "wt+DTT vs wt-untreated", "wt+DTT vs wt...
#> $ series_id              <chr> "GSE1688", "GSE1688", "GSE1688", "GSE16...
#> $ gpl                    <chr> "GPL1001", "GPL1001", "GPL1001", "GPL10...
#> $ status                 <chr> "Public on Aug 19 2004", "Public on Aug...
#> $ submission_date        <date> 2004-02-17, 2004-02-17, 2004-02-17, 20...
#> $ last_update_date       <date> 2005-05-28, 2005-05-28, 2005-05-28, 20...
#> $ type                   <chr> "RNA", "RNA", "RNA", "RNA", "RNA", "RNA...
#> $ source_name_ch1        <chr> "wildtype + DTT, 30 minutes", "wildtype...
#> $ organism_ch1           <chr> "Saccharomyces cerevisiae", "Saccharomy...
#> $ characteristics_ch1    <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ molecule_ch1           <chr> "total RNA", "total RNA", "total RNA", ...
#> $ label_ch1              <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ treatment_protocol_ch1 <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ extract_protocol_ch1   <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ label_protocol_ch1     <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ source_name_ch2        <chr> "wildtype (untreated)", "wildtype (untr...
#> $ organism_ch2           <chr> "Saccharomyces cerevisiae", "Saccharomy...
#> $ characteristics_ch2    <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ molecule_ch2           <chr> "total RNA", "total RNA", "total RNA", ...
#> $ label_ch2              <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ treatment_protocol_ch2 <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ extract_protocol_ch2   <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ label_protocol_ch2     <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ hyb_protocol           <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ description            <chr> "Wildtype cells were either treated wit...
#> $ data_processing        <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ contact                <chr> "Name: Chris Patil;\tEmail: cpatil@lbl....
#> $ supplementary_file     <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ data_row_count         <dbl> 6024, 6024, 6024, 6024, 6024, 6024, 602...
#> $ channel_count          <dbl> 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, ...
glimpse(gse)
#> Observations: 2,579
#> Variables: 18
#> $ gse                  <chr> "GSE1688", "GSE20420", "GSE27925", "GSE32...
#> $ ID                   <dbl> 1445, 18110, 24928, 56979, 56981, 37706, ...
#> $ title                <chr> "Unfolded protein response in wildtype, i...
#> $ status               <chr> "Public on Aug 19 2004", "Public on Oct 0...
#> $ submission_date      <date> 2004-08-17, 2010-02-19, 2011-03-14, 2011...
#> $ last_update_date     <date> 2012-03-15, 2012-03-22, 2012-03-23, 2015...
#> $ pubmed_id            <int> 15314660, 20847055, 21749328, NA, NA, NA,...
#> $ summary              <chr> "We measured steady-state mRNA levels by ...
#> $ type                 <chr> "Expression profiling by array", "Express...
#> $ contributor          <chr> "Christopher,K,Patil;\tHao Li;\tPeter Wal...
#> $ web_link             <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ overall_design       <chr> NA, "Four strains were used: WT (strain C...
#> $ repeats              <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ repeats_sample_list  <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ variable             <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ variable_description <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ contact              <chr> "Name: Chris Patil;\tEmail: cpatil@lbl.go...
#> $ supplementary_file   <chr> NA, "ftp://ftp.ncbi.nlm.nih.gov/geo/serie...
glimpse(gpl)
#> Observations: 608
#> Variables: 20
#> $ ID                   <dbl> 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 3...
#> $ title                <chr> "ORF_intergenic_v1.0", "intergenic_v1.0",...
#> $ gpl                  <chr> "GPL49", "GPL50", "GPL51", "GPL52", "GPL5...
#> $ status               <chr> "Public on Feb 12 2002", "Public on Feb 1...
#> $ submission_date      <date> 2002-02-08, 2002-02-08, 2002-02-08, 2002...
#> $ last_update_date     <date> 2013-01-18, 2012-10-19, 2013-01-18, 2013...
#> $ technology           <chr> "spotted DNA/cDNA", "spotted DNA/cDNA", "...
#> $ distribution         <chr> "non-commercial", "non-commercial", "non-...
#> $ organism             <chr> "Saccharomyces cerevisiae", "Saccharomyce...
#> $ manufacturer         <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ manufacture_protocol <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ coating              <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ catalog_number       <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ support              <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ description          <chr> "Tip Configuration: Standard 32-tip;\tCol...
#> $ web_link             <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ contact              <chr> "Name:  Stanford Microarray Database;\tEm...
#> $ data_row_count       <dbl> 16128, 7680, 9216, 9216, 8832, 9216, 8448...
#> $ supplementary_file   <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
#> $ bioc_package         <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N...
```

pkg API:
--------

-   `find_in_*(x)` finds the observations of table that match pattern `x` in a least 1 variable. A few built in helper functions to query against each cel of each table (all lower case!):

``` r
x <- c("top[1|2|3|o]")
find_in_gsm(x)
#> Warning: attributes are not identical across measure variables; they will
#> be dropped
#> [[1]]
#> # A tibble: 141 × 32
#>           gsm     ID                                  title
#>         <chr>  <dbl>                                  <chr>
#> 1  GSM1106865 991666                  [hs1990] top1-del-1-a
#> 2  GSM1106866 991667                  [hs1990] top1-del-1-b
#> 3  GSM1107847 992648                  [hs1991] top3-del-1-b
#> 4  GSM1107848 992649                  [hs1991] top3-del-2-a
#> 5   GSM205924 185138  Top1 distribution in HU(SUP fraction)
#> 6   GSM205925 185139 Top1 distribution in HU(ChIP fraction)
#> 7   GSM205926 185140          Top2 distribution in HU (SUP)
#> 8   GSM205927 185141 Top2 distribution in HU(ChIP fraction)
#> 9  GSM1018217 920608                      Pol 2 WT 0' Rep 1
#> 10 GSM1018218 920609                      Pol 2 WT 0' Rep 2
#> # ... with 131 more rows, and 29 more variables: series_id <chr>,
#> #   gpl <chr>, status <chr>, submission_date <date>,
#> #   last_update_date <date>, type <chr>, source_name_ch1 <chr>,
#> #   organism_ch1 <chr>, characteristics_ch1 <chr>, molecule_ch1 <chr>,
#> #   label_ch1 <chr>, treatment_protocol_ch1 <chr>,
#> #   extract_protocol_ch1 <chr>, label_protocol_ch1 <chr>,
#> #   source_name_ch2 <chr>, organism_ch2 <chr>, characteristics_ch2 <chr>,
#> #   molecule_ch2 <chr>, label_ch2 <chr>, treatment_protocol_ch2 <chr>,
#> #   extract_protocol_ch2 <chr>, label_protocol_ch2 <chr>,
#> #   hyb_protocol <chr>, description <chr>, data_processing <chr>,
#> #   contact <chr>, supplementary_file <chr>, data_row_count <dbl>,
#> #   channel_count <dbl>
find_in_gse(x)
#> Warning: attributes are not identical across measure variables; they will
#> be dropped
#> [[1]]
#> # A tibble: 42 × 18
#>         gse    ID
#>       <chr> <dbl>
#> 1  GSE38496 33896
#> 2  GSE25909 23147
#> 3   GSE8305  7246
#> 4  GSE68016 58739
#> 5  GSE52701 43122
#> 6  GSE55948 47568
#> 7  GSE62927 54867
#> 8  GSE68016 58739
#> 9  GSE22809 20349
#> 10 GSE37005 32712
#> # ... with 32 more rows, and 16 more variables: title <chr>, status <chr>,
#> #   submission_date <date>, last_update_date <date>, pubmed_id <int>,
#> #   summary <chr>, type <chr>, contributor <chr>, web_link <chr>,
#> #   overall_design <chr>, repeats <chr>, repeats_sample_list <chr>,
#> #   variable <chr>, variable_description <chr>, contact <chr>,
#> #   supplementary_file <chr>
x <- c("affy", "nimblegen")
find_in_gpl(x)
#> Warning: attributes are not identical across measure variables; they will
#> be dropped
#> [[1]]
#> # A tibble: 33 × 20
#>       ID                                              title     gpl
#>    <dbl>                                              <chr>   <chr>
#> 1     65         [YG_S98] Affymetrix Yeast Genome S98 Array   GPL90
#> 2    125 [Ye6100SubA] Affymetrix Yeast Genome 6K SubA Array  GPL163
#> 3    126 [Ye6100SubB] Affymetrix Yeast Genome 6K SubB Array  GPL164
#> 4    127 [Ye6100SubC] Affymetrix Yeast Genome 6K SubC Array  GPL165
#> 5    128 [Ye6100SubD] Affymetrix Yeast Genome 6K SubD Array  GPL166
#> 6    245                                          rikDacFC6  GPL347
#> 7    808                                     SC3456a520015F GPL1280
#> 8   1480        [Yeast_2] Affymetrix Yeast Genome 2.0 Array GPL2529
#> 9   1491                                         DNA_Tags_3 GPL2544
#> 10  1542                                    ISB Yeast Array GPL2622
#> # ... with 23 more rows, and 17 more variables: status <chr>,
#> #   submission_date <date>, last_update_date <date>, technology <chr>,
#> #   distribution <chr>, organism <chr>, manufacturer <chr>,
#> #   manufacture_protocol <chr>, coating <chr>, catalog_number <chr>,
#> #   support <chr>, description <chr>, web_link <chr>, contact <chr>,
#> #   data_row_count <dbl>, supplementary_file <chr>, bioc_package <chr>
#> 
#> [[2]]
#> # A tibble: 36 × 20
#>       ID
#>    <dbl>
#> 1   1493
#> 2   2230
#> 3   2921
#> 4   3046
#> 5   3086
#> 6   4000
#> 7   4205
#> 8   4468
#> 9   5421
#> 10  5454
#> # ... with 26 more rows, and 19 more variables: title <chr>, gpl <chr>,
#> #   status <chr>, submission_date <date>, last_update_date <date>,
#> #   technology <chr>, distribution <chr>, organism <chr>,
#> #   manufacturer <chr>, manufacture_protocol <chr>, coating <chr>,
#> #   catalog_number <chr>, support <chr>, description <chr>,
#> #   web_link <chr>, contact <chr>, data_row_count <dbl>,
#> #   supplementary_file <chr>, bioc_package <chr>
# find_in_gds() #TODO
# find_in_gds_subset() #TODO
```

pkg creation:
-------------

-   Prelims

``` r
use_readme_rmd()
use_data_raw()
```

-   save subset of `geometadb` as `tbl`s for use in package. see `data-raw/` in pkg source:

| step    | description                              |
|:--------|:-----------------------------------------|
| 01      | download geometadb                       |
| 02      | filter and extract geometadb tbls to csv |
| 03      | save data objects                        |
| 04      | cleanup remove previous geometadb        |
| \* when | writing `find_*` fxns                    |

``` r
use_package("tidyr")
use_package("dplyr")
use_package("purrr")
use_package("stringr")
```
