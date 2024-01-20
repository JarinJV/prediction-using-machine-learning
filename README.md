# prediction-using-machine-learning

## Predictive Clustering Analysis of Iris Dataset using Unsupervised Machine Learning

### Introduction:
Explore inherent patterns in the Iris dataset using unsupervised machine learning. The primary goal is to determine the optimal number of clusters through k-means clustering, providing insights into natural groupings within the data.

### Objective:
Identify the ideal number of clusters for k-means clustering to uncover hidden structures in iris flower measurements.

### Methodology:
1. **Data Preparation:**
   - Load Iris dataset.
   - Select relevant features.

2. **Elbow Method:**
   - Iterate through clusters (1 to 10).
   - Calculate within-cluster sum of squares.
   - Plot elbow curve to find optimal clusters.

3. **K-means Clustering:**
   - Apply k-means with optimal clusters.
   - Visualize clusters using `clusplot`.

### Analysis:
Elbow method guides in choosing optimal clusters. K-means reveals inherent patterns, visualized through a cluster plot.

### Interpretation:
Cluster plot color-codes iris samples, showcasing natural groupings based on sepal and petal dimensions.

### Result:
Optimal clusters determined via elbow method. Visual representation of clusters obtained through k-means clustering.

### Conclusion:
Uncovering patterns in the Iris dataset enhances understanding. This analysis provides valuable insights for various applications, such as species classification.
