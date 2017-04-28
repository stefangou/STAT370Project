methane<-read.csv("methane.csv", header=TRUE)
muniwaste<-read.csv("municipalwaste.csv", header=TRUE)

methane1995 <- methane[which(methane$Year==1995), ]
methane2012 <- methane[which(methane$Year==2012), ]
muniwaste$methanedifference<-methane2012$Valuepercapita-methane1995$Valuepercapita

data.slr<-lm(muniwaste$methanedifference~muniwastedifference)

plot(muniwastedifference,muniwaste$methanedifference, main="Change in Municipal Waste (1995-2012) vs. Change in Methane Levels (1995-2012)", xlab="Change in Municipal Waste (Kilograms per Capita)", ylab="Change in Methane Levels (Millions Tonnes per Capita)")
abline(data.slr)

text(muniwastedifference,muniwaste$methanedifference, labels=methane1995$Location, cex= 0.5, pos=3)

cor(muniwaste$methanedifference,muniwastedifference)
