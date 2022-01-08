s = readline.strip.split('')
t = readline.strip.split('')

i = 0
t.each do |c|
  i += 1 if s[i] == c
end

puts i + 1
