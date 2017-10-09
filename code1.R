


#####Week1

myfunction <- function(x){


filex<-read.csv("hw1_data.csv")
#head(filex, n=2) ##first 2 rows
#nrow(filex) ##number of rows
#tail(filex,n=2) ##last 2 rows
#filex[47,1] #row 47, column 1 data
#sum(is.na(filex[,1])) #no. of missing in column 1
#mean(filex[complete.cases(filex),1]) mean of non-missing rows in column 1

#mean(subset(filex,Ozone>31 & Temp > 90)[,2]) mean of column 2, when column1>31&column4>90
#mean(subset(filex,Month==6)[,4]) Mean of column 4, when column month=6
#a<-subset(filex,Month==5)[,1]
#max(a[complete.cases(a)]) Max of column 1, when column month=6. consider 'NA' values
}


#####Week 2
