#setwd("C:/Users/Jaken/Desktop")


#####                 ##### 
##### Tumor Size Data #####
#####                 #####

tumor_size = read.csv("Brain.csv", colClasses=c("NULL", "NULL", NA, "NULL", "NULL", "NULL"))
tumor_size_omit_na <- na.omit(tumor_size)

print("MEAN TUMOR SIZE: ")
sapply(tumor_size_omit_na, mean, na.rm = TRUE)
print("VARIANCE OF TUMOR SIZE: ")
sapply(tumor_size_omit_na, var, na.rm = TRUE)
print("STANDARD DEVIATION OF TUMOR SIZE: ")
sapply(tumor_size_omit_na, sd, na.rm = TRUE)


#####                      ##### 
##### Age @ Diagnosis Data #####
#####                      #####

age_diagnosis = read.csv("Brain.csv", colClass=c("NULL", NA, "NULL", "NULL", "NULL", "NULL"))
age_diagnosis_omit_na <- na.omit(age_diagnosis)

print("MEAN AGE AT DIAGNOSIS: ")
sapply(age_diagnosis_omit_na, mean, na.rm = TRUE)
print("VARIANCE OF AGE AT DIAGNOSIS: ")
sapply(age_diagnosis_omit_na, var, na.rm = TRUE)
print("STANDARD DEVIATION OF AGE AT DIAGNOSIS: ")
sapply(age_diagnosis_omit_na, sd, na.rm = TRUE)

tumor_size_omit_na <- as.numeric(unlist(tumor_size_omit_na))
hist(tumor_size_omit_na)
boxplot(tumor_size_omit_na)
