greenhouse<-read.csv("greenhouse.csv", header=TRUE)
renewables<-read.csv("renewables.csv", header=TRUE)
greenhouse1990<-greenhouse[which(greenhouse$Year==1990),]
greenhouse2014<-greenhouse[which(greenhouse$Year==2014),]
renewables$difference<-renewables$Value.1-renewables$Value
greenhouse2014$difference<-greenhouse2014$Value-greenhouse1990$Value
plot(greenhouse2014$difference~renewables$difference)
text(renewables$difference,greenhouse2014$difference, labels=greenhouse2014$LOCATION, cex= 0.5, pos=3)
greenhouse.slr<-lm(greenhouse2014$difference~renewables$difference)
plot(greenhouse2014$difference~renewables$difference, main="Change in % Renewables vs. Change in Greenhouse Gases per Capita", xlab="Change in % Renewables of Total Energy", ylab="Change in GHG Per Capita")
abline(greenhouse.slr)