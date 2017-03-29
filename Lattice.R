load(sales.RData)
sales
plot(Sales ~ Year, data = sales, subset = Product==1 & Store ==2)
par(mfrow = c(2,2))
for(plot.type in c("l", "b", "o", "n")){
  plot(Sales ~ Year, data = sales, subset = Product==1 & Store ==2, 
       type = plot.type, main = paste("Type:" , plot.type))
}
plot(Sales ~ Year, data = sales, subset = Product==1 & Store ==2,
     type = "o", pch = 16)
lines(Sales ~ Year, data = sales, subset = Product==1 & Store ==2,
      type = "o", pch = 1)
plot(Sales ~ Year, data = sales, subset = (Product==1 | Product ==2)& Store ==2 , 
                                           type= "o", pch = 16)
lines(Sales ~ Year, data = sales, subset = Product==1 & Store ==2,
      type = "o", pch = 16, col = "black")
lines(Sales ~ Year, data = sales, subset = Product==1 & Store ==2,
      type = "o", pch = 1, col = "blue")
library(lattice)
xyplot(Sales ~ Year, data = sales, subset = Product ==1 & Store == 2,
       type = "b", pch = 16)
xyplot(Sales ~ Year,group = Product, data = sales, subset = Store == 2,
       type = "b", pch = 16, auto.key = TRUE)
xyplot(Sales ~ Year |as.factor(Store), group = Product, data = sales, type = "b", pch = 16, auto.key = TRUE)

grades <- read.csv("grades.csv")
grades
attach(grades)
names(grades)
plot(Final ~ Midterm )
plot(jitter(Final)~ jitter(Midterm))
plot(Final ~ Midterm, col ="gray")
points(jitter(Final)~ jitter(Midterm), col= "blue")
plot(Final ~ Midterm)
abline(v= 80 )
abline(h= 80 )
abline(a= 0, b= 1)
plot(Final ~ Midterm, xlim= c(0,100), ylim = c(0,100))
abline(a=0, b=1)
plot(Final ~ Midterm, xlim= c(55,100), ylim = c(55,100))
abline(a=0, b=1)
plot(Final ~ Midterm, xlim= c(100,55), ylim = c(100,55))
abline(a=0, b=1)
text(Final ~ Midterm, labels= Name)
abline(a=0, b=1)
text(Final ~ Midterm, labels= )
plot(Final ~ Midterm, xlim= c(55,100), ylim = c(55,100),type = "n")
abline(a=0, b=1)
names(grades)
plot(grades$Final~ grades$Midterm, xlim= c(55,100), ylim = c(55,100))
plot( grades$Final ~ grades$Midterm, xlim= c(55,100), ylim = c(55,100), type= "n")
abline(a=0, b=1)
identify(grades$Final ~ grades$Midterm)
grades[12, ]
grades[81, ]
plot( grades$Final ~ grades$Midterm, xlim= c(55,100), ylim = c(55,100))
abline(a=0, b=1)
identify(grades$Final ~ grades$Midterm, labels = grades$Name)
detach(grades)
library(DAAG)
attach(hills2000)
hills2000
plot(dist ~ climb)
identify(dist ~ climb, labels = rownames(hills2000))
hills2000["Morven",]
hills2000[19,]
detach(hills2000)
attach(grades)
plot(Final ~ Midterm, xlim= c (55,100), ylim = c(55,100))
abline(a=0, b=1)
locator()
plot(Final ~ Midterm, xlim= c (55,100), ylim = c(55,100))
abline(a=0, b=1, col= "gray")
abline(lm(Final~ Midterm), col= "black")
panel.smooth(Midterm, Final)
plot(Final ~ Midterm, xlim= c (55,100), ylim = c(55,100), 
         pch= ifelse (Section=="730", 1, 3))
abline(a=0, b=1, col = "gray")
plot(Final ~ Midterm, xlim= c (55,100), ylim = c(55,100), 
     pch= ifelse (Section=="730", 1, 3),
     col= ifelse(Section=="730", "blue", "pink"))
abline(a=0, b=1, col = "gray")
legend(locator(),legend = c("7:30 section", "9:30 Section"),
       pch = c(1,3), col = c("blue", "pink"))
abline(lm(Final~Midterm, subset = Section=="730"), col="blue")
abline(lm(Final~Midterm, subset = Section=="900"), col="pink")
legend("topleft",legend = c("7:30 section", "9:30 Section"),
       pch = c(1,3), col = c("blue", "pink"))
panel.smooth(Midterm[Section=="730"], Final[Section == "730"],
             col= "blue", col.smooth = "blue")
panel.smooth(Midterm[Section=="900"], Final[Section == "900"],
             col= "pink", col.smooth = "pink")
hills2000
barplot(hills$dist)
barplot(hills$dist, names = rownames(hills))
barplot(hills$dist, names = rownames(hills), horiz = TRUE)
barplot(hills$dist, names = rownames(hills), horiz = TRUE, las =1)
barplot(hills$dist, names = rownames(hills), horiz = TRUE, las =1, cex.names = .7)
par(mar= c(5,8,4,2))
barplot(hills$dist, names = rownames(hills), horiz = TRUE, las =1, cex.names = .7)
barplot(hills$dist[order(hills$dist)], names = rownames(hills)[order(hills$dist)], horiz = TRUE, las =1, cex.names = .7)
dotchart(hills$dist, lables = rownames(hills))
dotchart(hills$dist[order(hills$dist)], lables = rownames(hills)[order(hills$dist)], pch=16, cex = .8)
dotchart(hills$dist[order(hills$dist)], 
         lables = rownames(hills)[order(hills$dist)], pch=16, cex = .8, main = "Hill Races", xlab = "distance")
