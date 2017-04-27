beefconsumption<-read.csv("beefconsumption.csv", header=TRUE)
beefconsumption$difference<-beefconsumption$Value.1-beefconsumption$Value

methaneworldbank<-read.csv("methaneworldbank.csv", header=TRUE)
methaneworldbank$difference<-methaneworldbank$X2012..YR2012.-methaneworldbank$X1995..YR1995.
methaneworldbank$differencepercapita<-methaneworldbank$difference / methaneworldbank$Population

plot(methaneworldbank$differencepercapita~beefconsumption$difference, xlab="Change in Beef Consumption (Kilograms per Capita)", ylab="Change in Methane Levels (Thousands Tonnes per Capita)", main="Change in Beef Consumption (Kilograms per Capita)")
methaneworldbank.slr<-lm(methaneworldbank$differencepercapita~beefconsumption$difference)
abline(methaneworldbank.slr)
methaneworldbank.slr

cor(methaneworldbank$differencepercapita,beefconsumption$difference)