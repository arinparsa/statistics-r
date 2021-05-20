# Arin Parsa
# Date: 4/16/2021

data("Titanic")
View(Titanic)
Titanic <- as.data.frame(Titanic)

# Column that indicates change/difference in survival outcome by class
library(tidyverse)
Titanic2 <- Titanic %>% group_by(Survived, Class) %>% summarize(diff = sum(Freq))

Titanic3 <- Titanic2 %>% pivot_wider(names_from = Survived, values_from = diff) %>% mutate(diff = No/(Yes + No))

#One sample t-test to compare the surviving rate of first class and the rest of the classes on the Titanic

t.test(Titanic3$diff[2:4], mu = Titanic3$diff[1])
