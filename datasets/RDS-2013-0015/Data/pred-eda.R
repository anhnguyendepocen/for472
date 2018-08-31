rm(list=ls())
dat <- read.csv("FACE_aspen_core_growth.csv")
colnames(dat)

## ##Treat = Code for treatment used on tree (1=control, 2=elevated CO2, 3=elevated O3, and 4=elevated CO2+O3)
## unique(dat$Treat)

## unique(dat$SPP)

##Choose the measurement year
dbh <- dat$X2008_DBH
ht <- dat$X2008_Height

##Tree treatment codes: 1=control; 2=elevated CO2; 3=elevated O3; and 4=elevated CO2+O3
treat <- dat$Treat
dbh.treat.1 <- dbh[treat==1]
ht.treat.1 <- ht[treat==1]

dbh.treat.2 <- dbh[treat==2]
ht.treat.2 <- ht[treat==2]

plot(dbh.treat.1, ht.treat.1, xlim=range(dbh, na.rm=TRUE), ylim=range(ht, na.rm=TRUE),
     pch=19, col="salmon3", cex=0.5, xlab="DBH (cm)", ylim="Height (cm)")
points(dbh.treat.2, ht.treat.2, pch=19, col="blue", cex=0.5)

## treat.1 <- dat[dat$Treat == 1 & dat$SPP == "A",]
## dim(treat.1)

## treat.2 <- dat[dat$Treat == 2 & dat$SPP == "A",]
## dim(treat.2)

## mean(treat.1$X2008_Height, na.rm=T)
## mean(treat.2$X2008_Height, na.rm=T)

## yrs <- 1998:2008
## ht.names <- paste("X",yrs,"_Height",sep="")
## ht.names

## mean.treat.1 <- apply(dat[dat$Treat == 1, ht.names], 2, mean, na.rm=TRUE)
## mean.treat.2 <- apply(dat[dat$Treat == 2, ht.names], 2, mean, na.rm=TRUE)

## pai.treat.1 <- (mean.treat.1[ht.names[length(ht.names)]]-mean.treat.1[ht.names[1]])/(yrs[length(yrs)]-yrs[1])
## pai.treat.2 <- (mean.treat.2[ht.names[length(ht.names)]]-mean.treat.2[ht.names[1]])/(yrs[length(yrs)]-yrs[1])

## plot(yrs, pai.treat.1, typ="l")

## plot(1:length(ht.names), ylim=range(treat.1[,ht.names], na.rm=T), typ="n", xlab="year")
## for(i in 1:nrow(treat.2)){lines(1:length(ht.names), treat.2[i,ht.names], col="blue")}
## for(i in 1:nrow(treat.1)){lines(1:length(ht.names), treat.1[i,ht.names], col="purple")}

## treat.1.mu <- apply(treat.1[,ht.names], 2, mean, na.rm=T)
## treat.2.mu <- apply(treat.2[,ht.names], 2, mean, na.rm=T)
## lines(1:length(ht.names), treat.1.mu, col="red")
## lines(1:length(ht.names), treat.2.mu, col="orange")
