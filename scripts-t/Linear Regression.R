# Author:Arin Parsa
# Date: 02/19/2021

# Factors of spiciness of salsa and vector of salsa ratings
salsa <- c("hot", "mild", "medium", "hot")
salsa <- factor(salsa)
salsa2 <- c("mild", "medium", "hot")
salsa2 <- factor(salsa2)
salsa <- factor(salsa, levels=salsa2)
ratings <- c(7, 5, 6, 10)

#Linear regression of salsa ratings and spiciness of salsa
reg <- lm(ratings~salsa)
plot(ratings~salsa)
summary(reg)
