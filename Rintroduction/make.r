library("rmarkdown")

FILE = "Rintroduction.Rmd"

rmarkdown::render(FILE, "html_document")
rmarkdown::render(FILE, "pdf_document")
