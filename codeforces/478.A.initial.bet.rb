c = readline.strip.split(/\s+/).map(&:to_i)

sum = c.sum

if sum >= 5 && sum % 5 == 0
  puts sum / 5
else
  puts(-1)
end
