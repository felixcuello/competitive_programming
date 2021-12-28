n, s = readline.strip.split(/\s+/).map(&:to_i)

mugs = readline.strip.split(/\s+/).map(&:to_i)
can_play = true

mugs.sort!

(n - 1).times do |i|
  s -= mugs[i]
end

puts s < 0 ? 'NO' : 'YES'
