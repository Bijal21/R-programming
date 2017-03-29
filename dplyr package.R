library(datasets)
## Install dplyr package
## load dplyr from library

library(dplyr)

## improt airquality dataset
head(airquality)

##filter is to return alll the rows where Temp is larger then 80 and Month is after May
filter(airquality, Temp > 80 & Month >5)

## Mutate:- this function helps to add new variables to data. in following action we are adding a new column that displays the temperature in celsius
mutate(airquality, TempInc = (Temp - 32)* 5/9) 

##Summarise:- The summarise function is used to summarise multiple values into a single value. 
             ##It is very powerful when used in conjunction with the other functions in the dplyr package, 
             ##as demonstrated below. na.rm = TRUE will remove all NA values while calculating the mean, 
             ##so that it doesn't produce spurious results
summarise(airquality, mean(Temp, na.rm = TRUE))

## Group_by:- The group_by function is used to group data by one or more variables. Will group the data together based on the Month, 
            ##and then the summarise function is used to calculate the mean temperature in each month.
summarise(group_by(airquality, Month), mean(Temp, na.rm = TRUE))

##Sample:- The sample function is used to select random rows from a table. The first line of code randomly selects ten rows from the dataset, 
      ##and the second line of code randomly selects 15 rows (10% of the original 153 rows) from the dataset.
sample_n(airquality, size = 10)
sample_frac(airquality, size = 0.1)

##Count:- The count function tallies observations based on a group. 
##It is slightly similar to the table function in the base package. For example
count(airquality, Month)

##arrange:- The arrange function is used to arrange rows by variables. 
          ##Currently, the airquality dataset is arranged based on Month, 
          ##and then Day. We can use the arrange function to arrange the rows in the descending order of Month, 
          ##and then in the ascending order of Day.
arrange(airquality, desc(Month), Day)

##Pipe:- The pipe operator in R, represented by %>% can be used to chain code together. 
      ##It is very useful when you are performing several operations on data, 
      ##and don't want to save the output at each intermediate step.
filteredData <- filter(airquality, Month != 5)
groupedData  <- group_by(filteredData, Month)
summarise(groupedData, mean(Temp, na.rm = TRUE))

## by rewritting above code with piping
airquality %>%
filter(Month != 5) %>% 
group_by(Month) %>% 
summarise(mean(Temp, na.rm = TRUE)) 
