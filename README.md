
# Exploratory Data Analysis (EDA) of the Iris Dataset

This repository contains R code for performing an exploratory data analysis (EDA) on the famous Iris dataset. The analysis includes summary statistics, visualizations such as histograms, density plots, boxplots, and scatter plots, as well as identifying outliers. The goal is to understand the structure, distribution, and relationships between variables in the Iris dataset.

## Dataset

The Iris dataset is a classic dataset in statistics and machine learning, consisting of measurements of the sepal length, sepal width, petal length, and petal width of three species of iris flowers: *Iris setosa*, *Iris versicolor*, and *Iris virginica*.

## Code Overview

### 1. Data Loading and Initial Inspection
- `data(iris)`: Loads the Iris dataset.
- `head(iris)`: Displays the first few rows of the dataset.
- `summary(iris)`: Provides a statistical summary of the data.
- `str(iris)`: Displays the structure of the dataset, including data types and number of observations.

### 2. Data Visualization

#### Histograms
- **Sepal Length Distribution**: 
  ```R
  hist(iris$Sepal.Length, main = "Distribution of Sepal Length", xlab = "Sepal Length", col = "lightblue")
  ```
- **Petal Length Distribution**: 
  ```R
  hist(iris$Petal.Length, main = "Distribution of Petal Length", xlab = "Petal Length", col = "lightgreen")
  ```

#### Density Plot
- **Density Plot of Sepal Length**: 
  ```R
  plot(density(iris$Sepal.Length), main = "Density Plot of Sepal Length", xlab = "Sepal Length", col = "red")
  ```

#### Boxplots
- **Outlier Detection in Sepal Length**: 
  ```R
  boxplot(iris$Sepal.Length, main = "Boxplot of Sepal Length", col = "lightblue", horizontal = TRUE)
  ```
- **Petal Length by Species**: 
  ```R
  boxplot(Petal.Length ~ Species, data = iris, main = "Boxplot of Petal Length by Species", col = c("lightblue", "lightgreen", "lightpink"))
  ```

### 3. Relationship Between Variables

#### Scatter Plot
- **Sepal Length vs. Petal Length**: 
  ```R
  plot(iris$Sepal.Length, iris$Petal.Length, main = "Sepal Length vs Petal Length", xlab = "Sepal Length", ylab = "Petal Length", col = iris$Species)
  legend("topright", legend = levels(iris$Species), col = 1:3, pch = 1)
  ```

## How to Run the Code

1. Ensure that you have R installed on your system.
2. Copy and paste the code into an R script or run it line-by-line in an R console or RStudio.
3. Execute the script to generate the summary statistics and visualizations.

## Dependencies

- R base packages (no additional libraries are required).

## Purpose of the Analysis

- To understand the distribution of individual variables.
- To visualize the relationships between features.
- To identify outliers in the data.
- To explore the differences between species.

## License

This code is released under the MIT License.
