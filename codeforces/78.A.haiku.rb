p1 = readline.strip.gsub(/[^aeiou]/, '')
p2 = readline.strip.gsub(/[^aeiou]/, '')
p3 = readline.strip.gsub(/[^aeiou]/, '')

puts (p1.length == 5 and p2.length == 7 and p3.length == 5) ? "YES" : "NO"
