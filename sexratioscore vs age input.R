for(i in 1:15)
sexratioscore=function(x,y){
r=c(x/y*100)
g=numeric(15)
for(i in 1:15){
g[i]=r[i]-r[i+1]
}
h=c(abs(g))
return(h)
}
library(readxl)
dat1=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\sexratio score graph.xlsx",sheet=1)
m1=dat1$Males
f1=dat1$Females
m11=c(m1)
f11=c(f1)
indias=c(sexratioscore(m1,f1))
indias
dat2=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\sexratio score graph.xlsx",sheet=2)
m2=dat2$Males
f2=dat2$Females
m22=c(m2)
f22=c(f2)
assams=c(sexratioscore(m2,f2))
assams
dat3=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\sexratio score graph.xlsx",sheet=3)
m3=dat3$Males
f3=dat3$Females
m33=c(m3)
f33=c(f3)
odishas=c(sexratioscore(m3,f3))
odishas
dat4=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\sexratio score graph.xlsx",sheet=4)
m4=dat4$Males
f4=dat4$Females
m44=c(m4)
f44=c(f4)
keralas=c(sexratioscore(m4,f4))
keralas
x=c(1:15)
plot(x,indias,type="b",lty=1,pch=19,col="black",xlab="Age",ylab="Sex Ratio Score",main="Multiple line diagram of age vs age wise sexratio score")
points(x,assams,col="red",pch=15)
lines(x,assams,col="red",lty=2)
points(x,odishas,col="purple",pch=16)
lines(x,odishas,col="purple",lty=3)
points(x,keralas,col="orange",pch=17)
lines(x,keralas,col="orange",lty=4)
legend("top",legend=c("INDIA","ASSAM","ODISHA","KERALA"),col=c("black","red","purple","orange"),pch=c(19,15,16,17),lty=c(1,2,3,4),text.font=1,ncol=1)
















