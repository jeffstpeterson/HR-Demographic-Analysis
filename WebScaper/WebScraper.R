install.packages("devtools")
devtools::install_github("mguideng/gdscrapeR)
library(gdscrapeR)
?get_reviews
df < - get_reviews(companyNum = "E356")