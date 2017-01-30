## Read the data
Wisconsin = read.csv("WI16.txt",header = TRUE,sep = ",")

test = read.csv("slubkin_992016-20170113122943.txt", header = T, sep = ",")

##Select targets
Wi.ID = Wisconsin[, c(1, 2)]

Wi.FIPS.code = Wisconsin[, 9]

Wi.year = Wisconsin[,27]

Wi.ratings = Wisconsin[,67:75]

Wi.abstract = cbind(Wi.ID, Wi.FIPS.code, Wi.year, Wi.ratings)

## Rename the columns
colnames(Wi.abstract)[3] = colnames(Wisconsin)[9]

names(Wi.abstract)[4] = colnames(Wisconsin)[27]

## Print the abstract data
print(Wi.abstract) 
