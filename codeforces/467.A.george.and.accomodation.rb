n = readline.strip.to_i

result = 0
n.times do
  p,q = readline.strip.split(/\s+/).map(&:to_i)
  result += 1 if q - p > 1
end
puts result
