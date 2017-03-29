Degree <- c("HS", "BA", "MBA", "MS", "BS", "MBA", "HS", "HS", "PHD", "PHD", "BA", "BS", "MA", "MS")
Degree <- factor(Degree)
Degree
Degree <- c("HS", "BA", "MBA", "MS", "BS", "MBA", "HS", "HS", "PHD", "PHD", "BA", "BS", "MA", "MS")
Degree[Degree == "HS" ] <- "High School"
Degree
Degree[Degree == "BA" ] <- "College"
Degree
Degree[Degree == "BS" ] <- "College"
Degree
Degree[Degree == "MA" ] <- "Graduate"
Degree
Degree[Degree == "MS" ] <- "Graduate"
Degree
Degree[Degree == "MBA" ] <- "Graduate"
Degree
Degree[Degree == "PHD" ] <- "Graduate"
Degree
Degree <- factor(Degree, levels =  c("High School" , "College" , "Graduate"))
Degree
table(Degree)
