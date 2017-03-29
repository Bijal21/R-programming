c(7, 15, 18, 4, 7, 9, 10 )
my.second.vector <- c(7, 15, 18, 4, 7, 9, 10 )
my.second.vector
p <- my.second.vector
q <- c(8, 3, 9, 21, 14, 17, 7)
r <- c(p,q)
p
q
r
lenght(r)
length(r)
r[5:8]
r[2,4,6,8,10,12,14]
r[c(2,4,6,8,10,12,14)]
r>10
r[r>10]
which(r>10)
mean(r)
sd(r)
c(1:10)
c(1,2)
c(1:10)+c(1,2)
as.Date("1915-5-16")
as.Date("January 1, 2017" , format = "%m/%d/%Y")
help("strftime")
as.Date("1/1/2017", format = "%m/%d/%Y")
as.Date("6/1/2017", format = "%m/%d/%Y")
date1 <- as.Date("1/1/2017", format = "%m/%d/%Y") 
date1
date2 <- as.Date("6/1/2017", format = "%m/%d/%Y")
date2
difftime(date2,date1,units = "days")
difftime(date2,date1,units = "weeks")
difftime(date2,date1,units = "hours")
as.POSIXct("1/1/2017 18:47:22")
as.POSIXct("2017/1/1 18:47:22")
[{seq()
as.POSIXct("2017/6/1 06:39:58")
time1 <- as.POSIXct("2017/1/1 18:47:22")
time1
time2 <- as.POSIXct("2017/6/1 06:39:58")
time2
difftime(time2,time1,units = "hours")
library(DAAG)
library(DAAG)
rm(spam7)
library(DAAG)
spam7
dim(spam7)
names(spam7)
summary(spam7)
quantile(spam7$dollar, .95)
max(spam7$dollar)
max(spam7$dollar(n-1))
a <- max(spam7$dollar) 
a
which(a == sort(unique(a),partial=n-1)[n-1])
which.max(spam7$dollar)
Second largest <- spam7$dollar[-1533]
s <- spam7$dollar[-1533]
s
rest<-spam7$dollar[-1533]
max(rest)
s <- spam7$dollar[-1533]
max(s)
max(spam7$dollar) - max(s)
seq(from=3,to=14,by=8 )
course <- c("HS", "BA", "MBA", "MS", "BS", "MBA", "HS", "HS", "PHD", "PHD", "BA", "BS", "MA", "MS")
exit(library)
Degree
Degree[Degree=="HS" ] <- "High School"
Degree
as.POSIXct("2017/01/01")
time1 <- as.POSIXct("2017/01/01")
time1
as.POSIXct("2017/06/01")
time2 <- as.POSIXct("2017/06/01")
time2
difftime(time2,time1, units = "hours")
seq(from = 3, length.out = 14, by = 8)
r[seq(from = 2, to = 14, by = 2)]
