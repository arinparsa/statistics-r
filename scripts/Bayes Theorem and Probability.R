# Arin Parsa
# 04/16/2021

# Bayes Theorem
# Given smoke probability of fire
psmoke = 0.25
pfire = 0.1
pfiresmoke = 0.99
bayes = (pfiresmoke*pfire)/psmoke

# Proability of rolling a 6 after rolling a 1 on a fair dice
set.seed(27)
law <- sample(1:6, 1000, replace = TRUE)
count = 0
count1 = 0
for (i in 1:length(law)) {
  if (law[i] == 1) {
    count = count + 1
    if (law[i+1] == 6) {
      count1 = count1 + 1
    }
  }
}

probability = count1/count