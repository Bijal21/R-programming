library(DAAG)
austpop
austpop[5,4]
austpop[9,10]
austpop[nrow(austpop), ncol(austpop)]
austpop[ , 3]
class(austpop)
class(austpop[ , 3])
austpop$Vic
austpop$NSW
austpop[ , "Vic"]
namerow(austpop)
austpop$Qld[5]
austpop$Qld[austpop$year == 1957]
austpop$Vic
austpop[,c(1,3)]
austpop[ , c("year" , "Vic")]
class(austpop[ , c("year" , "Vic")])
columns.I.want <- c("year" , "Vic")
austpop[ , columns.I.want]
austpop[,-10]
austpop[5,]
class(austpop[5,])
austpop[-5,]
austpop[austpop$year != 1957,]
austpop["5",]
austpop[1:4, 1:3]
austpop[seq(1,9, by=2), c(1,4:6)]
seq(1,9, by=2)
austpop
austpop$Vic[2]-austpop$Vic[1]
austpop$Vic[3]-austpop$Vic[2]
austpop$Vic[2:9]- austpop$Vic[1:8]
paste(austpop$year[1:8], austpop$year[2:9], sep = "-")
population.change <- austpop[2:9, ] - austpop[1:8, ] 
row.names(population.change) <- paste(austpop$year[1:8], austpop$year[2:9], sep = "-")
population.change
diff(austpop$Vic)
diff(austpop)
diff(austpop$year)
sapply(austpop, diff)
class(sapply(austpop, diff))
as.data.frame(sapply(austpop,diff))
austpop$Vic
diff(austpop$Vic)
diff(austpop$Vic)/austpop$Vic[1:8]
percent.change <- 100*diff(austpop$Vic)/austpop$Vic[1:8]
percent.change
percent.change <- sapply(austpop, diff)/austpop[1:8, ]
row.names(percent.change) <- paste(austpop$year[1:8], austpop$year[2:9], sep = "-")
percent.change
percent.change <- percent.change*100
percent.change <- round(percent.change,0)
percent.change
percent.change <- percent.change[,-1]
percent.change
grades <- read.csv("grades.csv")
grades
head(grades)
names(grades)
sapply(grades, class)
levels(grades$Course.Grade)
levels(grades$Year)
grades <- read.csv("grades.csv", stringsAsFactors = FALSE)
sapply(grades, class)
LETTERS
LETTERS[1:6]
LETTERS[c(1:4,6)]
paste(LETTERS[c(1:4,6)],c("+" ,"", "-"), seq = "")
paste(rep(LETTERS[c(1:4,6)],3), c("+", "", "-" ), seq ="")
paste(rep(LETTERS[c(1:4,6)],3),c("+", "", "-"), seq = "")
rep(LETTERS[c(1:4,6)], 3)
paste(rep(LETTERS[1:4],each = 3),c("+", "", "-"), seq = "")
c(paste(rep(LETTERS[1:4],each = 3),c("+", "", "-"), seq = ""), "F")
grade.levels <- c(paste(rep(LETTERS[1:4],each = 3),c("+", "", "-"), seq = ""), "F")
grade.levels
grades$Course.Grade <- factor(grades$Course.Grade, levels = grade.levels)
grades$Course.Grade
grades$Section <- factor(grades$Section)
grades$Year <- factor(grades$Year)
sapply(grades, class)
table(grades$Course.Grade)
table(grades$Course.Grade)/nrow(grades)
table(grades$Course.Grade, grades$Section)
xtabs(-Section +Course.Grade, data = grades)
names(grades)
mean(grades$Course)
mean(grades$Course[grades$Section == "730"])
mean(grades$Course[grades$Section == "900"])
tapply(grades$Course, grades$Section, mean)
tapply(grades$Course, grades$Section, sd)
tapply(grades$Course, grades$Section, summary)
tapply(grades$Course, list(grades$Section, grades$Year), mean)
tapply(grades$Course, list(grades$Section, grades$Year), median)
tapply(grades$Course,grades$Section, mean)
t.test(Course - Section, data= grades)
t.test(Course.Grade - Year, data = grades)
t.test(course - Year, data = grades, subset= Section == "730")
a <- c(5,10,2)
sort(a)
a
order(a)
a[order(a)]
rank(a)
sort(a,decreasing = TRUE)
order(a, decreasing = TRUE)
rank(-a)
grades[order(grades$Course, decreasing = TRUE), ]
grades[order(grades$Course, decreasing = TRUE), c("Name", "Course") ]
grades[order(grades$Course, decreasing = TRUE), c("Name", "Course") ][1:10,]
grades[order(grades$Course, decreasing = TRUE)[1:10], c("Name", "Course") ][1:10,]
grades[order(grades$Final, grades$Midterm, decreasing = TRUE), ]
grades[order(-grades$Final, grades$Name), c("Name", "Final")]
grades$Change <- grades$Final - grades$Midterm
head(grades)
sum(grades$Change > 0)
grades$Change > 0
sum(grades$Change > 0, na.rm = TRUE)
sum(grades$Change > 0, na.rm = TRUE) / nrow(grades)
sum(grades$Change <0, na.rm = TRUE) / nrow(grades)
sum(grades$Change == 0, na.rm = TRUE) / nrow(grades)
sum(is.na(grades$Change)) / nrow(grades)
grades[which.max(grades$Change),]
grades[which.min(grades$Change),]
grades[order(grades$Change, decreasing = TRUE),]
summary(grades$Change)
mean(grades$Change[grades$Change>0], na.rm = TRUE)
mean(grades$Change[grades$Change<0], na.rm = TRUE)
t.test(abs(Change) - Change > 0, data = grades, subset= Change !=0)
