baseball <- read.csv("baseball_2002_2007.csv")
baseball <- baseball_2002_2007
my.model <- lm(Wins ~ Runs, data = baseball )
summary(my.model)

baseball.new <- baseball_2008_1_
baseball.new
predicted.wins <- predict(my.model, newdata = baseball.new)
plot(x= baseball.new$Wins, y= predicted.wins, 
     xlab = "Actual Wins in 2008",
     ylab= "predcting Wins in 2008",
     xlim = c(55,105),
     ylim = c(55,105))
abline(0,1)
(baseball.new$Wins - predicted.wins)
((baseball.new$Wins - predicted.wins)^2)
mean(((baseball.new$Wins - predicted.wins)^2))

sqrt(mean(((baseball.new$Wins - predicted.wins)^2)))

irs <- IRS
summary(irs)
training.rows <- sample(1:24, size = 18)
training.rows

irs.training <- irs[training.rows, ]
irs.training
irs.testing <- irs[-training.rows, ]
nrow(irs.training)
nrow(irs.testing)
irs.model <- lm(irs.training$`Taxes Owed` ~ irs.training$`Pre-Tax Income` + irs.training$`Schedule C Deductions (%)`+ irs.training$`Home Office`, data = irs.training)
summary(irs.model)
testing.predictions <- predict(irs.model, newdata = irs.testing)
plot(x= irs.testing$`Taxes Owed`, y = testing.prediction, xlim = c(0, 40000), ylim = c(0,40000) )
 abline(0,1)
 
(irs.training$`Taxes Owed` - testing.prediction)
sqrt(mean (((irs.testing$`Taxes Owed` - testing.prediction)^2)))
 library(DAAG)
cv <- CVlm(irs,
      formula(`Taxes Owed` ~ `Pre-Tax Income` + `Schedule C Deductions (%)`+ `Home Office`), 10)

irs.model <- lm(`Taxes Owed` ~ `Pre-Tax Income` + `Schedule C Deductions (%)`+ `Home Office`, data = irs)
)


summary(irs.model)

baseball
my.model<- lm(Wins ~ Runs + ERA, data=baseball)
summary(my.model)

summary(baseball$ERA)
sd(baseball$ERA)

summary(baseball$Runs)
sd(baseball$Runs)
.501 * (-19.0874)
58.1 * .1058
my.model <- lm(Wins ~ League + Runs + ERA, data = baseball)
summary(my.model)
levels(baseball)
levels(baseball$League)
my.model <- lm(Wins ~ Division + Runs + ERA, data = baseball)
.19 -(- .
      

baseball_2002_2007
my.model <- lm (Wins ~ Runs, data = baseball_2002_2007)
h
hist(rstudent(my.model))
plot(density(rstudent(my.model)))

irs.model <- lm(IRS$`Taxes Owed`~ IRS$`Pre-Tax Income`+ IRS$`Schedule C Deductions (%)`+ IRS$`Home Office`)
summary(irs.model)
plot(irs.model$residuals ~ irs.model$fitted.values)
plot(irs.model$residuals ~ irs$`Pre-Tax Income`)
plot(irs.model$residuals ~ irs$`Schedule C Deductions (%)`)
plot(irs.model$residuals ~ irs$`Home Office`)
boxplot(irs.model$residuals ~ irs$`Home Office`)

library(faraway)
galapagoes.model <- lm(Species ~ Area + Elevation + Scruz + Nearest + Adjacent, data = gala)

summary(galapagoes.model)
plot(galapagoes.model$fitted.values, galapagoes.model$residuals, xlab = "fitted value", ylab = "Residual")

galapagoes.model <- lm(sqrt(Species) ~ Area + Elevation + Scruz + Nearest + Adjacent, data = gala)
summary(galapagoes.model)
plot(galapagoes.model$fitted.values, galapagoes.model$residuals, xlab = "fitted value", ylab = "Residual")

nonlinear

my.model <- lm(Y ~ X, data = nonlinear)
summary(my.model)
plot(Y~X, data = nonlinear)
abline(my.model)

plot(my.model$residuals, my.model$fitted.values)

my.model <- lm(Y ~ X + I(X^2), data = nonlinear)
summary(my.model)
plot(Y~X, data = nonlinear)
lines(x= nonlinear$X, y= my.model$fit)

baseball_2002_2007
my.model <- lm(Wins ~ Runs, data = baseball_2002_2007)
summary(my.model)
plot(my.model$residuals ~ baseball_2002_2007$Year)
boxplot(my.model$residuals ~ baseball_2002_2007$Year)

panel.smooth(baseball_2002_2007$Year, my.model$residuals)

my.model <- lm(Wins ~ Runs + Year, data = baseball_2002_2007)
summary(my.model)

my.model <- lm(Wins ~ Runs +factor(Year), data = baseball_2002_2007)
summary(my.model)


