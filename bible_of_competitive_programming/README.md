
# Bible of Competitive Programming

## Mathematical Fundamentals

### Sieve of Erathostenes

To calculate primes quickly

### Modulo Operations

The most important thing is basically that (a % k) * (b % k) == (a * b) % k

### Divide and Conquer

pow(x, n) == (n % 2 == 0) ? (pow(x, n/2) * pow(x, n/2) : x * pow(x, n-1))

This requires also some memoization, but the trick is there

### Problems

- [Self Dividng Numbers](https://leetcode.com/problems/self-dividing-numbers/)
	- Complexity O(log_10(n))
- [Palindrome Numbers](https://leetcode.com/problems/palindrome-number/)
	- Complexity O(2\*log_10(n))
- [Pow(x,n)](https://leetcode.com/problems/powx-n/)
	- Complexity O(log(n))
- [Count Primes](https://leetcode.com/problems/count-primes/)
	- Complexity O(n * log(n)) (Guess)
- [Ugly Number](https://leetcode.com/problems/ugly-number/)
	- Complexity O(3 * log(n))

## Arrays

### Partial Sum Array

If you want to know the sum of elements between (X, Y)

### Updating an array more than 1 time

Use a temporary update array

### Problems

- [Maximum Subarray](https://leetcode.com/problems/maximum-subarray/)
