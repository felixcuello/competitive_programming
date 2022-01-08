a = readline.strip.split(/\s+/).map(&:to_i)

result = 0
readline.strip.split('').each do |b|
  b = b.to_i
  result += a[b-1]
end
puts result
