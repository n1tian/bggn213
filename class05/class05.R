weight <- read.table("~/Downloads/BGGN213/bimm143_05_rstats/weight_chart.txt", header = TRUE, sep = "")
plot(weight$Age, weight$Weight, type = "o", pch=15, cex = 1.5, lwd = 2, ylim = c(2,10), xlab = "age (months)", ylab = "weight (kg)", main = "baby weight with age")
mouse <- read.delim("~/Downloads/BGGN213/bimm143_05_rstats/feature_counts.txt", header = TRUE)
par(mar=c(5,12,6,5))
barplot(height = mouse$Count, horiz=TRUE, xlab = "Count", names.arg=mouse$Feature,las=1, main="Number of features in the mouse GRCm38 genome",  xlim = c(0,80000))





