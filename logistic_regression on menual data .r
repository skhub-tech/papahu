# PRACTICAL 6
# Aim: Perform the logistic regression on the given data warehouse data using R

# Create a simple dataset manually
data <- data.frame(
  Hours_Studied = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  Passed_Exam = c(0, 0, 0, 0, 1, 1, 1, 1, 1, 1)  # 1 = Passed, 0 = Failed
)

# View the dataset
print(data)

# Fit logistic regression model
model <- glm(Passed_Exam ~ Hours_Studied, data = data, family = "binomial")

# View model summary
summary(model)

# Predict probabilities
pred_probs <- predict(model, data, type = "response")

# Convert probabilities to binary (Threshold = 0.5)
pred_class <- as.factor(ifelse(pred_probs > 0.5, 1, 0))

# Confusion Matrix
conf_matrix <- table(Predicted = pred_class, Actual = data$Passed_Exam)
print(conf_matrix)
