#programming assignment 1


##Combine all csv files into 1
#filenames <- list.files(pattern=".csv$")
#pt1<-do.call("rbind", lapply(filenames, read.csv, header = TRUE))

##PART1
##Calculate Mean
pollutantmean <- function(directory, pollutant="sulfate", id=1:332){

   pt3<-subset(pt1,ID<=max(id)&ID>=min(id)) ##subset on rows as per ID values
   pollution<-mean(pt3[complete.cases(pt3),pollutant]) ## calculate mean
   return(pollution) ##output mean value

}

##PART2
complete<-function(directory,id){
 pt4<-subset(pt1,ID<=max(id)&ID>=min(id))
  for (i in id){
    x<-cbind2(i,nrow(subset(pt4[complete.cases(pt4), ], ID==i)))
    print(x)
  }
}

###PART3

 corr<-function(directory,id=1:332,threshold=0){
   x5<-list()
   pt4<-subset(pt1,ID<=max(id)&ID>=min(id))
   pt5<-subset(pt4[complete.cases(pt4),])
   for (i in id){
     x1<-cbind(a=i,b=nrow(subset(pt5[complete.cases(pt5), ], ID==i)),c=threshold)
     x11<-subset(x1,nrow(subset(pt5[complete.cases(pt5), ], ID==i))>threshold)
     x2<-subset(cbind(pt5,x11),ID==i)
     cr<-cor(x2$nitrate, x2$sulfate)#, use="complete.obs")
     x3<-cbind(x2,cr)
     x4<-unique(subset(x3,select=c("ID","cr")))
     x5[[length(x5)+1]]=x4
   }

   return(x5)
 
 }







