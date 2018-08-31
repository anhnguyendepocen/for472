dat <- read.csv("Data/felled_tree_biomass.csv")
colnames(dat)

plot(dat$dbh_in[1:10], dat$height_ft[1:10])

dbh.sq <- dat$dbh_in^2
m <- lm(height_ft ~ dbh_in + dbh.sq, data=dat)
summary(m)

plot(dat$height_ft, fitted(m), ylim=c(20,80), xlim=c(20,80))
