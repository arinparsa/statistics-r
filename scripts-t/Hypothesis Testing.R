# Author:Arin Parsa
# Date: 03/22/2021

# Null hypothesis: There is no correlation between the petal length of a flower and the species
# Alternate hypothesis: There is a correlation between the petal length of a flower and the species

#Investigate which flower has a more common type of petal length
summary(iris$Petal.Length)
iris$Species = as.numeric(iris$Species)
iris$Petal.Length.Class = ifelse(iris$Petal.Length < median(iris$Petal.Length), "Low", "High")
table(iris$Petal.Length.Class)
t.test(iris$Species[iris$Petal.Length.Class=="Low"], iris$Species[iris$Petal.Length.Class=="High"], na.rm = TRUE)

model <- lm(Species ~ Petal.Length, data = iris)
summary(model)