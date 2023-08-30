aq = datasets::airquality

summary(aq$Wind)

plot(aq$Wind, type="l")

#Barplot############################

help(barplot)

barplot(aq$Ozone,main="Ozone Concentration in air",
                 ylab = "Ozone Levels",
                 col = "grey",
                 horiz = T,
                 axes = T)

#Histogram#########################

help(hist)

hist(aq$Temp)
hist(aq$Temp,main="Solar Radiation Values in air",
             xlab="Solar radiation", 
             col="red",
             border="black")

#Boxplot###########################

help(boxplot)

boxplot(aq$Wind,main="Boxplot", 
             col="red",
             border="black",
             horizontal= T)
boxplot.stats(aq$Wind)$out
boxplot.stats(aq$Wind)$inl

#Multiple boxplots########################

boxplot(aq[,],
        main="Multiple box plots",
        horizontal=T,
        col="blue")

#############################################################

help(par) # Partition Function

par(mfrow=c(3,3), mar=c(1,2,1,2), las=0, bty="o")
plot(aq$Ozone)
plot(aq$Ozone,aq$Wind)
plot(aq$Ozone,type="l")
plot(aq$Wind,type="l")
plot(aq$Solar.R,type="l")
barplot(aq$Ozone)
hist(aq$Solar.R)
boxplot(aq$Solar.R)

#################Consider NA values#######################

aq
max(aq$Wind)
min(aq$Temp)
min(aq$Solar.R)
mean(aq$Solar.R)
mean(aq$Wind)

mean(aq$Solar.R,na.rm=T) #rm means remove na values.
median(aq$Ozone)
median(aq$Ozone,na.rm=T)
min(aq$Ozone)
min(aq$Ozone,na.rm=T)
min(aq$Day)
max(aq$Day)
max(aq$Solar.R,na.rm=T)


var(aq$Wind)  #variance
sd(aq$Wind)  #standard deviation

skewness(aq$Ozone,na.rm=T)
kurtosis(aq$Ozone,na.rm=T)

#Density plot
plot(density(aq$Wind))
plot(density(aq$Ozone,na.rm=T))

