#carbon_percapita<-read.csv("UNdatacarboncapita.csv",header=TRUE)
#barplot(carbon_percapita$Value, names.arg=carbon_percapita$Country.or.Area)

setwd("~/Downloads")
carbon_per_country<-read.csv("carbon_per_country.csv",header=TRUE, sep=";")

#1.comparing carbon tax vs emissions trading

#2. comparing renewable energy per country compared to decrease(change) in GHG

#3. Who is doing the most? Small, medium or large? Island/coastal vs. land-locked?
# Europe,Africa,SA,NA,Asia? 

#4. Other greenhouse gases?