n = readline.to_i
h = readline.strip.split('')

x = 0
x2 = 0

h.each do |hamster|
  x += 1 if hamster == 'x'
  x2 += 1 if hamster == 'X'
end

count = 0

n.times do |i|
  break if x == x2

  if x2 > x && h[i] == 'X'
    h[i] = 'x'
    x2 -= 1
    x += 1
    count += 1
  elsif x > x2 && h[i] == 'x'
    h[i] = 'X'
    x -= 1
    x2 += 1
    count += 1
  end
end

puts count
puts h.join('')
