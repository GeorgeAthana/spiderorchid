# Download faculty quality journal lists from https://www.intranet.monash/business/research-services/deans-list

library(tidyverse)
library(pdftools)
# Read pdf file
pdf_file <- here::here(
  "data-raw/Deans-List-Guidelines-19-11-2025.pdf"
)
text <- pdf_text(pdf_file)
data <- unlist(strsplit(text, "\n")) |>
  str_remove_all("") |>
  str_trim()
# Remove all empty elements
data <- data[data != ""]
# Find where list starts (after Interdisciplinary)
start_journals <- which(data == 'Interdisciplinary') + 1
#Select only journals
list<-data[start_journals:length(data)]
#Remove disciplinary headings 
list<-list[!(list %in% c("Accounting", 
                   "Economics",
                   "Finance",
                   "Management",
                   "Marketing",
                   "Statistics")
)]


#Remove last line (published book)

list<-head(list,-1)

monashdeans<-tibble(title=list,rank=factor('Deans List'))


# save into rcademy
usethis::use_data(monashdeans, overwrite = TRUE)