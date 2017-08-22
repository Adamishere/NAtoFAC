
#Function to Convert NA into Factor Level "99"
#Accepts one parameters
# fac -  single variable
na2fac<-function(fac){
  facna<-fac
  if(is.factor(fac)){
    facna<-addNA(fac)
    levels(facna) <- c(levels(fac), 99)
  }
  
  return(facna)
}

#Example
x<-c(1,1,1,2,2,2,3,3,3,NA,NA,NA,NA)
x1<-as.factor(x)

x1<-na2fac(x1)
str(x1)

#Example Datafame
#Generate Dataframe
x1<-c(1,1,1,2,2,2,3,3,3,NA,NA,NA,NA)
x2<-c(1,1,1,2,2,2,3,3,3,NA,NA,NA,NA)
x3<-c(1,1,1,2,2,2,3,3,3,NA,NA,NA,NA)
mydat<-as.data.frame(cbind(x1,x2,x3))
mydat<-lapply(mydat,as.factor)
str(mydat)
#convert dataframe vars into factors
mydat1<-as.data.frame(lapply(mydat,na2fac))
str(mydat1)

