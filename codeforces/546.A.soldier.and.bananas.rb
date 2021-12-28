k,n,w = readline.strip.split(/\s+/).map(&:to_i)

w.times do |i|
  n -= (i+1)*k
end

puts (n >= 0) ? 0 : n.abs
