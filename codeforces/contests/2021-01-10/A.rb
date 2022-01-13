t = readline.strip.to_i

t.times do
  readline
  numbers = readline.strip.split(/\s+/).map(&:to_i)

  max = numbers.max
  min = numbers.min

  puts max - min
end
