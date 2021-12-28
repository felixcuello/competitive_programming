n = readline.strip.to_i
a = readline.strip.split(/\s+/).map(&:to_i)
wires = [0] + a + [0]

m = readline.strip.to_i
m.times do
  w, b = readline.strip.split(/\s+/).map(&:to_i)
  wires[w-1] += b - 1
  wires[w+1] += wires[w] - b
  wires[w] = 0
end

n.times do |i|
  puts wires[i+1]
end
