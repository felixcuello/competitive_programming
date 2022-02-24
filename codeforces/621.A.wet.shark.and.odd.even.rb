readline
integers = readline.strip.split(/\s+/).map(&:to_i)

result = 0
odd = []
integers.each do |i|
  if i % 2 == 0
    result += i
  else
    odd << i
  end
end

odd.sort!

if odd.count % 2 == 0
  result += odd.sum
else
  result += odd[1..-1].sum
end

puts result
