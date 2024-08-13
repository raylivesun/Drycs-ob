#!/usr/bin/r

# pill two different versions
name <- "Carmen"
n1 <- 10
n2 <- 100
m <- 0.5

# calculate the sum of squares
ss_name <- sum(n1 + n2^2 * m)

# calculate the variance
variance <- ss_name / (n1 + n2)
variance