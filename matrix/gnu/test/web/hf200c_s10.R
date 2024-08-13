#!/usr/bin/r

# Copyright (c)
n <- 10 + 2
# Copyright (c)

# Function to calculate the sum of all prime numbers up to a given limit
sum_of_primes <- function(limit) {
  primes <- logical(limit + 1)
  primes[1:2] <- FALSE

  for (i in seq(3, sqrt(limit), 2)) {
    if (primes[i]) {
      primes[seq(i^2, limit, i)] <- FALSE
    }
  }
  sum(which(primes))
}

# Calculate the sum of all prime numbers up to 1000
sum_of_primes(1000)
