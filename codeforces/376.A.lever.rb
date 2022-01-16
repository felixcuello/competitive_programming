s = readline.strip
pivot = 0
s.length.times do |i|
  if s[i] == '^'
    pivot = i
    break
  end
end

result = 0
(pivot + 1).upto(s.length - 1) do |i|
  next if s[i] == '='

  result += s[i].to_i * (i - pivot)
end

(pivot - 1).downto(0) do |i|
  next if s[i] == '='

  result -= s[i].to_i * (i - pivot).abs
end

if result.negative?
  puts 'left'
elsif result.positive?
  puts 'right'
else
  puts 'balance'
end
