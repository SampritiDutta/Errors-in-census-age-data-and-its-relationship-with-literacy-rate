literacyrate=function(x,y){
l=numeric(20)
for(i in 1:20){
l[i]=x[5*(i-1)+1]+x[5*(i-1)+2]+x[5*(i-1)+3]+x[5*(i-1)+4]+x[5*(i-1)+5]
}
p=numeric(20)
for(i in 1:20){
p[i]=y[5*(i-1)+1]+y[5*(i-1)+2]+y[5*(i-1)+3]+y[5*(i-1)+4]+y[5*(i-1)+5]
}
r=numeric(20)
for(i in 1:20){
r[i]=l[i]/p[i]*100
}
return(r)
}
library(readxl)
d1=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\graph lr.xlsx",sheet=1)
literate1=d1$Literate
l11=literate1
persons1=d1$Persons
p11=persons1
indial=literacyrate(l11,p11)
indial
d2=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\graph lr.xlsx",sheet=2)
literate2=d2$Literate
l22=literate2
persons2=d2$Persons
p22=persons2
assaml=literacyrate(l22,p22)
assaml
d3=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\graph lr.xlsx",sheet=3)
literate3=d3$Literate
l33=literate3
persons3=d3$Persons
p33=persons3
odishal=literacyrate(l33,p33)
odishal
d4=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\graph lr.xlsx",sheet=4)
literate4=d4$Literate
l44=literate4
persons4=d4$Persons
p44=persons4
keralal=literacyrate(l44,p44)
keralal
u=numeric(20)
for(i in 1:20){
u[i]=5*(i-1)
}
u
b=numeric(20)
for(i in 1:20){
b[i]=5*i-1
}
b
age=c("0-4","5-9","10-14","15-19","20-24","25-29","30-34","35-39","40-44","45-49","50-54","55-59","60-64","65-69","70-74","75-79","80-84","85-89","90-94","95-99")
age
barplot(indial,width=1,density=10,border='red',col="red",main="Bar Diagram of Literacy Rate Over Different Agegroups",xlab="Age",names.arg=age,ylab='Literacy Rate')


