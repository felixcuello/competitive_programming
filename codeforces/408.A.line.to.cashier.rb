n = readline.strip.to_i
k = readline.strip.split(/\s+/).map(&:to_i)

min = 100*100*100 + 1
n.times do |i|
  m = readline.strip.split(/\s+/).map(&:to_i)
  current = 0
  m.each do |items|
    current += items * 5
    current += 15
  end

  min = current if current < min
end

puts min
