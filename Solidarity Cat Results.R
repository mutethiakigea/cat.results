#Analytics of the students data 
#Data from Solidarity School
cat.results <- read.csv("C:/Users/Mutethia Kigea/Desktop/DS2/cat.results.csv")
View(cat.results)
attach(cat.results)


#Defining Data
names(cat.results)
dim(cat.results)
length(cat.results)


#Exploratory data Analysis
mean(Reading.Aloud)
mean(cat.results)
summary(cat.results)


#modeling
#Linear Regression
#Simple linear regression
results1=lm(Maths~Grammar)
results1
summary(results1)
#Multiple linear regression
results2=lm(Maths~Grammar+Lugha+Art+Music+Movement)
results2
summary(results2)


#Logistic Regression
# Load the dataset "cat.results"
cat.results <- read.csv("C:/Users/Mutethia Kigea/Desktop/DS2/cat.results.csv")
# Fit a logistic regression model
results3 <- glm(Maths ~ Grammar + Lugha, data = cat.results)
# Print the summary of the model
summary(results3)
plot(results3)


#Decision Tree
# Load the rpart package
library(rpart)
# Load the cat.results dataset
cat.results <- read.csv("C:/Users/Mutethia Kigea/Desktop/DS2/cat.results.csv")
# Build the decision tree model
results4 <- rpart(NAME ~., data = cat.results)
# Plot the decision tree
plot(results4)
text(results4)


#Visualization of the data
plot(cat.results)
plot(results4)
text(results4)
#LInear Regression
#Multiple linear regression
plot(results2)
plot(results1)
