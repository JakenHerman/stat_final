setwd("C:/Users/Jaken/Desktop")

tumor_size = read.csv("Brain.csv", colClasses=c("NULL", "NULL", NA, "NULL", "NULL", "NULL"))
tumor_size_omit_na <- na.omit(tumor_size)

summary(tumor_size_omit_na)
