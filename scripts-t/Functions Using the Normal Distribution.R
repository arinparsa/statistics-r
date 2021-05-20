set.seed(27)

13 > (sort(rnorm(20, 14, 2)))[9]

set.seed(28)

y <- 0

for (i in 1:100) {
  x <- 13 > (sort(rnorm(20, 14, 2)))[9]
  y <- y + x
}

print(y/100)

set.seed(29)

y <- 0

for (i in 1:1000) {
  x <- 13 > (sort(rnorm(20, 14, 2)))[9]
  y <- y + x
}

print(y/1000)

