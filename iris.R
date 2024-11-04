#EDA(exoloratory data analysis)
data(iris)
head(iris)
summary(iris)
str(iris)
#distribution of dataset using histogram,scatterplot,boxplot
hist(iris$Sepal.Length,
main="Distribution of Sepal Length",
xlab = "Sepal Length",
col = "lightblue"
)
 hist(iris$Petal.Length,
main = "Distribution of Petal Length",
xlab = "Petal Length",
col = "lightgreen"
)
 #Density plot
 plot(density(iris$Sepal.Length),
main = "Density Plot of Sepal Length",
xlab = "Sepal Length",
col = "red"
)
 
 #Identify Outliers
 boxplot(iris$Sepal.Length,
main = "Boxplot of Sepal Length",
col = "lightblue",
horizontal = TRUE
)
 boxplot(Petal.Length ~ Species,
data =  iris,
main = "Boxplot of Petal Length by Species",
col = c("lightblue", "lightgreen", "lightpink")
)
 
 #relationship between variables
 #scatter plot
 plot(iris$Sepal.Length,
iris$Petal.Length,
main = "Sepal Length vs Petal Length",
xlab = "Sepal Length",
ylab = "Petal Length",
col = iris$Species
)
 legend("topright", legend = levels(iris$Species), col = 1:3, pch = 1)
