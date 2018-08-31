rm(list=ls())

file <- "http://blue.for.msu.edu/FOR472/data/FACE_aspen_core_growth.csv"
face.dat <- read.csv(file)

names(face.dat)

##Choose the measurement year
dbh <- face.dat$X2008_DBH
ht <- face.dat$X2008_Height

##Tree treatment codes: 1=control; 2=elevated CO2; 3=elevated O3; and 4=elevated CO2+O3
treat <- face.dat$Treat
dbh.treat.1 <- dbh[treat==1]
ht.treat.1 <- ht[treat==1]

dbh.treat.2 <- dbh[treat==2]
ht.treat.2 <- ht[treat==2]

plot(dbh.treat.1, ht.treat.1, xlim=range(dbh, na.rm=TRUE), ylim=range(ht, na.rm=TRUE),
     pch=19, col="salmon3", cex=0.5, xlab="DBH (cm)", ylab="Height (cm)")
points(dbh.treat.2, ht.treat.2, pch=19, col="blue", cex=0.5)
