n, _m = readline.strip.split(/\s+/).map(&:to_i)
result = Array.new(n + 1, 0)

readline.strip.split(/\s+/).each do |b|
  b = b.to_i
  for i in b..n
    break if result[i] != 0
    result[i] = b
  end
end

result.shift

puts result.join(' ')

