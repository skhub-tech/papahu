# PRACTICAL 5
# Aim: Perform the Linear regression on the given data warehouse data using R

# Define the land area values (independent variable)
land_area <- c(500, 1000, 1500, 2000, 2500)

# Define the corresponding prices (dependent variable)
price <- c(500000, 950000, 1300000, 1700000, 2100000)

# Display land area and price values
land_area
price

# Create a linear regression model with price as the dependent variable
# and land_area as the independent variable
model <- lm(price ~ land_area)

# Define new land area values for prediction
new_land <- c(1200, 1800, 2200, 3000)

# Predict the price for the new land areas using the trained model
predicted_prices <- predict(model, newdata = data.frame(land_area = new_land))

# Display predicted prices
predicted_prices
