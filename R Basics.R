library(DAAG)
spam
dim(spam7)
max.print
c(1:10)
c(1:2)
c(1:10)+c(1:2)
Degree[is.HS(Degree)] <- High School
replace("HS", Degree, "High School")
Degree[Degree=="'HS"] <- "High School"
Degree.vector=="HS"
gsub("BA" | "BS", "College", Degree)
sub("BA", "College", Degree)
Degree <- replace(Degree,Degree=="HS","High School")
Degree <- c("HS", "BA", "MBA", "MS", "BS", "MBA", "HS", "HS", "PHD", "PHD", "BA", "BS", "MA", "MS")
Degree <- factor(Degree)
Degree
Degree <- replace(Degree, Degree == "HS", "High School")
Degree<-replace(Degree, Degree=="HS", "High School")
Degree<-Degree.factor(Degree, Degree=="HS","High School")
Degree <- replace(Degree, Degree == "HS", "High School")
stringAsFactor=FALSE
SmallSortedf[] <- lapply(SmallSortedf, as.character)
degree <- factor(vector.c.1 , levels = c("BA", "BS",  "HS", "MA",  "MBA",  "MS",   "PHD"))
