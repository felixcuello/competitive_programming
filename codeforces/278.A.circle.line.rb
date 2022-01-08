n = readline.to_i
t = readline.strip.split(/\s+/).map(&:to_i)
t1, t2 = readline.strip.split(/\s+/).map(&:to_i).sort

forward = 0
(t1..t2-1).each do |i|
  forward += t[(i-1)%n]
end

backward = 0
(t2..(t1+n-1)).each do |i|
  backward += t[(i-1)%n]
end

puts [forward, backward].min
