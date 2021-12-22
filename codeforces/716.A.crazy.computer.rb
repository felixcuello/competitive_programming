n, c = readline.strip.split(/\s+/).map(&:to_i)
values = readline.strip.split(/\s+/).map(&:to_i)

words = 1
(n - 1).times do |i|
  if values[i + 1] - values[i] <= c
    words += 1
  else
    words = 1
  end
end

puts words
