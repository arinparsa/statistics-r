# Arin Parsa
# Date: 4/16/2021

data("Titanic")
View(Titanic)
Titanic <- as.data.frame(Titanic)
# Two sample t.test
# How many third class vs non third class kids survived

# One sample t-test
t.test(Titanic$Freq[Titanic$Age == "Child" & Titanic$Survived == "No"])


# Column that indicates change/difference in survival outcome by class
library(tidyverse)
Titanic2 <- Titanic %>% group_by(Survived, Class) %>% summarize(diff = sum(Freq))

Titanic3 <- Titanic2 %>% pivot_wider(names_from = Survived, values_from = diff) %>% mutate(diff = No/(Yes + No))

t.test(Titanic3$diff[2:4], mu = Titanic3$diff[1])
