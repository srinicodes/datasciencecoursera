

library(datasets)
data(iris)

Ans1<-mean(subset(iris,Species=="virginica")[,1])
print(Ans1)

Ans2<-apply(iris[,1:4],2,mean)


library(datasets)
data(mtcars)

Ans3<-sapply(split(mtcars$mpg, mtcars$cyl), mean)
Ans3<-with(mtcars, tapply(mpg, cyl, mean))
Ans3<-tapply(mtcars$mpg, mtcars$cyl, mean)


meanhp<-data.frame(rbind(tapply(mtcars$hp, mtcars$cyl, mean)))
Ans4<-abs(round(meanhp$X8-meanhp$X4))


