result = 0
x = [500,1000,1500,2000,2500]
m = readline.strip.split(/\s+/).map(&:to_i)
w = readline.strip.split(/\s+/).map(&:to_i)
hs, hu = readline.strip.split(/\s+/).map(&:to_i)

5.times do |i|
  result += [(x[i] / 10) * 3, (x[i] - ((x[i] / 250) * m[i])) - 50 * w[i]].max
end

result += (100 * hs - 50 * hu)

puts result
