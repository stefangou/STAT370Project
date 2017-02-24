carbon_percapita<-read.csv("UNdatacarboncapita.csv",header=TRUE)
barplot(carbon_percapita$Value, names.arg=carbon_percapita$Country.or.Area)

