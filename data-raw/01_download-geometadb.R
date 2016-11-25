library(GEOmetadb)

destdir <- file.path("data-raw", "tmp")
if(!dir.exists(destdir)) dir.create(destdir)
if(!file.exists("GEOmetadb.sqlite")) getSQLiteFile(destdir = destdir)
