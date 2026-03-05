# PRACTICAL 3
# Aim: Perform the data classification using classification algorithm using R

# Decision Tree On IRIS

# Step 1: Install and Load Required Packages
install.packages("rpart")
install.packages("rpart.plot")
install.packages("caret")

library(rpart)
library(rpart.plot)
library(caret)

# Step 2: Load the Iris Dataset
data(iris)
head(iris)

# Step 3: Split the Data into Training and Testing Sets
set.seed(123)
trainIndex <- createDataPartition(iris$Species, p = 0.8, list = FALSE)

trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Step 4: Train the Decision Tree Model
dtModel <- rpart(Species ~ ., data = trainData, method = "class")
print(dtModel)

# Step 5: Visualize the Decision Tree
rpart.plot(dtModel, type = 4, extra = 104, box.palette = "auto")

# Step 6: Make Predictions
predictions <- predict(dtModel, newdata = testData, type = "class")

# Step 7: Evaluate the Model
confusionMatrix(predictions, testData$Species)

# Step 8: Predict for New Data (Example)

# Create a new data point for prediction
new_data <- data.frame(
  Sepal.Length = 5.0,
  Sepal.Width = 2.0,
  Petal.Length = 3.5,
  Petal.Width = 1
)

# Predict the class for the new data point
new_prediction <- predict(dtModel, newdata = new_data, type = "class")
print(new_prediction)
