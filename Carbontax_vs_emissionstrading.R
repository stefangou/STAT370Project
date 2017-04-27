#sidebyside boxplot

emissionstrading<-read.csv("emissionstrading.csv",header=TRUE)

carbontax<-read.csv("carbontax.csv",header=TRUE)

boxplot(carbontax$Difference.Population,emissionstrading$Difference.Population, names=c("Change after Carbon Tax","Change after ETS"), main="Change in carbon emissions (Metric Tons per Capita )", ylab="Difference in Carbon Emissions (Metric Tons per Capita)")

#ttest

t.test(carbontax$Difference.Population,emissionstrading$Difference.Population)

