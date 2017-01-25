#Welcome to Lab 3, please answer the following questions

#Install and require package MASS
install.packages("MASS")
require(MASS)
require(dplyr)

#Using the built in dataset anorexia, aggregate the data to look at:
#       1. the number of patients who received a treatment (choose one) who responded positively to treatment
#       2. the number of patients who recieved a treatment who either did not respond or responded negatively to treatment
#       3. the number of patients who were in the control group who responded positively to treatment
#       4. the number of patients who were in the control group who did not respond or responded negatively to treatment

#Such that you end up with a 2 by 2 table
View(anorexia)

calculations <- mutate(anorexia, change = anorexia$Postwt - anorexia$Prewt)

positive.change <- filter(calculations, change > 0, Treat == "CBT")
negative.change <- filter(calculations, change <= 0, Treat == "CBT")

control.positive <- filter(positive.change, Treat == "Cont")
control.negative <- filter(negative.change, Treat == "Cont")
  
CBT <- c(nrow(positive.change), nrow(control.positive))
Control <- c(nrow(negative.change), nrow(control.negative))

table <- data.frame(CBT, Control)
rownames(table)[1] <- "Positive Change"
rownames(table)[2] <- "Negative Change"

#What kind of analysis appropriate to perform on a study like this?




#Perform the appropriate choice on the dataset




#What does your result tell you?





#Write a function that allows you to perform your analysis based on what kind of treatment you want 
#that returns the appropriate calculation





#Which treatment worked better?





