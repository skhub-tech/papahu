# PRACTICAL 4
# AIM: Perform the data clustering using clustering algorithm using R

# K means on IRIS

# Install required packages if not already installed
install.packages("ggplot2")

# Load the required library
library(ggplot2)

# Load the dataset
data(iris)

# Remove categorical column (K-Means works on numeric data)
iris_numeric <- iris[, -5]

# Apply K-Means clustering (Choosing 3 clusters)
set.seed(123)
kmeans_result <- kmeans(iris_numeric, centers = 3)

# Create a mapping between cluster numbers and species names
cluster_mapping <- c("Setosa", "Versicolor", "Virginica")

# Assign species names based on clusters
iris$Cluster <- factor(kmeans_result$cluster, labels = cluster_mapping)

# Plot with Species names as cluster labels
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Cluster)) +
  geom_point(size = 3) +   # Only show points
  theme_minimal()
