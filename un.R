Ageratioscore=function(x){
x
a=c(x[2:13])
b=numeric(12)
for(i in 1:12){
b[i]=x[i]+x[i+2]
}
b
c=c(b/2)
d=c(a/c)
e=c(abs(d-1))
R=mean(e)
return(R)
}
library(readxl)
data1=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\india un.xlsx")
v=data1$Males
male=c(v)
indiam=Ageratioscore(male)
indiam
w=data1$Females
female=c(w)
indiaf=Ageratioscore(female)
indiaf
Sexratioscore=function(x,y){
x
y
f=c(x/y)
j=f*100
g=numeric(13)
for(i in 1:12){
g[i]=j[i]-j[i+1]
}
h=c(abs(g))
S=mean(h)
return(S)
}
indias=Sexratioscore(male1,female1)
indias
unofindia=3*indias+indiam+indiaf
unofindia
data2=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\india un.xlsx",sheet=2)
v2=data2$Males
male2=c(v2)
assamm=Ageratioscore(male2)
assamm
w2=data2$Females
female2=c(w2)
assamf=Ageratioscore(female2)
assamf
assams=Sexratioscore(male2,female2)
assams
unofassam=3*assams+assamm+assamf
unofassam
data3=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\india un.xlsx",sheet=3)
v3=data3$Males
male3=c(v3)
odisham=Ageratioscore(male3)
odisham
w3=data3$Females
female3=c(w3)
odishaf=Ageratioscore(female3)
odishaf
odishas=Sexratioscore(male3,female3)
odishas
unofodisha=3*odishas+odisham+odishaf
unofodisha
data4=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\india un.xlsx",sheet=4)
v4=data4$Males
male4=c(v4)
keralam=Ageratioscore(male4)
keralam
w4=data4$Females
female4=c(w4)
keralaf=Ageratioscore(female4)
keralaf
keralas=Sexratioscore(male4,female4)
keralas
unofkerala=3*keralas+keralam+keralaf
unofkerala
x=c(69.3,55.41,73.03,62.18,73.27,62.46,62.72,61.49,63.89,84.31)
y=c(10.18,5.21,7.18,10.83,11.63,22.88,21.37,12.47,6.15,9.9)
plot(x,y,main="Scatterplot of UNJS vs Literacy rate",xlab="Literacy rate",ylab="UNJS",col="black")
cor(x,y)



