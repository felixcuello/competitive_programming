n = readline.strip.to_i

if n < 3
  puts -1
else
  (1..n).to_a.reverse_each do |i|
    print ' ' if i < n
    print i
  end
end

