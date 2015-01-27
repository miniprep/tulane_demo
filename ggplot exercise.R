# Afternoon ggplot exercise at Tulane

# Install packages (only need to do once on each computer)
install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

# Run packages (need to do this EVERYTIME you run script)
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")

# Open built-in data set
head(iris)

# melt the iris data set
df <- melt(iris, id.vars = "Species")
df[1:2, ] #show row 1-2, all columns

# cast data back together after melting, pivot table?


ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
summary(myplot)
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
myplot + geom_point()

#you can set color as a variable for a column, e.g. color = species
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size = 3)
summary(myplot)

#you can also map shape to a catagorical variable, e.g. shape = Species
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, shape = Species)) + geom_point(size = 3)
summary(myplot)

# Take a small sample of the diamonds dataset
# subset random 1000 points out of diamonds dataset
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
ggplot(data = d2, aes(x = carat, y = price, color = color)) + geom_point(size = 3)
