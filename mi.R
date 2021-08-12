Myersindex=function(x){
P1=x[ ,c(1:4)]
P1
x1=c(rowSums(P1))
x1
P2=x[ ,c(2:5)]
P2
y=c(rowSums(P2))
y
x2=numeric(10)
for(i in 1:10){
x2[i]=(i*x[i])
}
x2
y2=numeric(10)
for(i in 1:10){
y2[i]=((10-i)*y[i])
}
y2
WeightedSums=c(x2+y2)
WeightedSums
BlendedPopulation=WeightedSums
BlendedPopulation
B=sum(BlendedPopulation)
B
b=c((BlendedPopulation/B)*100)
b
m=c(abs(b-10))
m
MI=sum(m)
return(MI)
}
library(readxl)
raw1=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\mi india.xlsx",sheet=1)
p1=raw1$Persons
m1=matrix(p1,nrow=10,byrow=T)
m1
indiami=Myersindex(m1)
indiami
raw2=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\mi india.xlsx",sheet=2)
p2=raw2$Persons
m2=matrix(p2,nrow=10,byrow=T)
m2
assammi=Myersindex(m2)
assammi
raw3=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\mi india.xlsx",sheet=3)
p3=raw3$Persons
m3=matrix(p3,nrow=10,byrow=T)
m3
keralami=Myersindex(m3)
keralami
raw4=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\mi india.xlsx",sheet=4)
p4=raw4$Persons
m4=matrix(p4,nrow=10,byrow=T)
m4
odishami=Myersindex(m4)
odishami
indialr=(763638812/1206365175)*100
indialr
assamlr=(19177977/31186752)*100
assamlr
odishalr=(26742595/41855047)*100
odishalr
keralalr=(28135824/33371575)*100
keralalr
x=c(69.3,55.41,73.03,62.18,73.27,62.46,62.72,61.49,63.89,84.31)
y=c(32.75,44.92,26.64,40.29,28.83,42.1,32.76,71.79,123.6,49.31)
plot(x,y,main='Scatterplot of Literacy Rate vs Myers Index',xlab='Literacy Rate',ylab="Myers Blended Index",col="red")
cor(x,y)










