

Dependencyratio=function(x){
x
Childpopulations=sum(x[1:15])
Oldagepopulations=sum(x[66:101])
Workingagepopulations=sum(x[16:65])
DR=(((Childpopulations+Oldagepopulations)/Workingagepopulations)*100)
return(DR)
}
library(readxl)
dr1=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\india dr.xlsx",sheet=1)
population1=dr1$Persons
vtr1=c(population1)
vtr1
indiadr=Dependencyratio(vtr1)
indiadr
dr2=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\india dr.xlsx",sheet=2)
population2=dr2$Persons
vtr2=c(population2)
vtr2
assamdr=Dependencyratio(vtr2)
assamdr
dr3=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\india dr.xlsx",sheet=3)
population3=dr3$Persons
vtr3=c(population3)
vtr3
odishadr=Dependencyratio(vtr3)
odishadr
dr4=read_excel("C:\\Users\\ANINDA DUTTA\\Desktop\\R Project\\india dr.xlsx",sheet=4)
population4=dr4$Persons
vtr4=c(population4)
vtr4
keraladr=Dependencyratio(vtr4)
keraladr
x=c(69.3,55.41,73.03,62.18,73.27,62.46,62.72,61.49,63.89,84.31)
y=c(51.89,81.75,47.98,48.54,43.76,63.81,58.77,58.83,53.49,46.61)
plot(x,y,main='Scatterplot of Literacy Rate vs Dependency Rate',xlab='Literacy Rate',ylab="Dependency Rate",col="blue")
cor(x,y)






