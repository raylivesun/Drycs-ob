#!/usr/bin/r

# Copyright (c)
n <- 15 + cos(12)

# Copyright (c)
m <- 30 + sin(12)

# Calculate the sum of the first n prime numbers
sum_of_primes <- function(n) {
  primes <- c()
  num <- 2
  while (length(primes) < n) {
    is_prime <- TRUE
    for (i in 2:sqrt(num)) {
        if (num %% i == 0) { # nolint
            is_prime <- FALSE # nolint
            break
        } # nolint
    }
    if (is_prime) {
        primes <- c(primes, num) # nolint
    } else {
        next # nolint
    }
    num <- num + 1
  }
  sum(primes)
}

# Calculate the sum of the first m Fibonacci numbers
sum_of_fibonacci <- function(m) {
  fib_sequence <- c(0, 1)
  while (length(fib_sequence) < m) {
    fib_sequence <- c(fib_sequence, fib_sequence[length(fib_sequence)] + fib_sequence[length(fib_sequence) - 1]) # nolint
  }
  sum(fib_sequence)
}

# Calculate the sum of the first n prime numbers
sum_primes_n <- sum_of_primes(n)

# Calculate the sum of the first m Fibonacci numbers
sum_fibonacci_m <- sum_of_fibonacci(m)

# Calculate the sum of the first n prime numbers and the first m Fibonacci numbers # nolint
sum_primes_n_fibonacci_m <- sum_primes_n + sum_fibonacci_m

sum_primes_n_fibonacci_m
 # nolint
