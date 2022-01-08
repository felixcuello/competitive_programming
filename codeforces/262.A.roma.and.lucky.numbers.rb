def lucky_digits(n)
  result = 0
  x = n.dup
  while x > 0
    d = x % 10
    result += 1 if d == 4 || d == 7
    x -= d
    x /= 10
  end

  result
end

n, k = readline.strip.split(/\s+/).map(&:to_i)
numbers = readline.strip.split(/\s+/)

result = 0
numbers.each do |number|
  number = number.to_i
  result += 1 if lucky_digits(number) <= k
end

puts result

