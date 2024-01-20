# Read the Iris dataset
iris_data <- read.csv("C:/Users/Jarin J V/Desktop/py/prediction_unsupervised/Iris.csv")

# Select relevant features for clustering
features <- iris_data[, c("SepalLengthCm", "SepalWidthCm", "PetalLengthCm", "PetalWidthCm")]

# Find optimal number of clusters using the elbow method
wss <- vector('numeric', length = 10)

for (i in 1:10) {
  kmeans_model <- kmeans(features, centers = i, nstart = 10)
  wss[i] <- sum(kmeans_model$withinss)
}

# Plot the elbow curve
plot(1:10, wss, type = "b", xlab = "Number of Clusters", ylab = "Within Sum of Squares", main = "Elbow Method")

# From the plot, you can visually inspect and determine the optimal number of clusters (where the elbow occurs)

# Based on the elbow method, let's say the optimal number of clusters is 3
optimal_clusters <- 3

# Perform k-means clustering with the optimal number of clusters
kmeans_model_optimal <- kmeans(features, centers = optimal_clusters, nstart = 10)

# Visualize the clusters
library(cluster)
clusplot(features, kmeans_model_optimal$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)

# You can also inspect the cluster centers and assignments
print(kmeans_model_optimal$centers)
print(kmeans_model_optimal$cluster)

