n = readline.strip.to_i
a = readline.strip.split('').map(&:to_i)
b = readline.strip.split('').map(&:to_i)

result = 0
n.times do |i|
  if (a[i] - b[i]).abs <= 5
    result += (a[i] - b[i]).abs
  else
   result += 10 - (a[i] - b[i]).abs
  end
end
puts result
