require 'set'


closet = 0

s = readline.strip
hands = ''
items = 0

s.length.times do |i|
  if items == 0
    hands = s[i]
    items += 1
  elsif items >= 5
    closet += 1
    hands = s[i]
    items = 1
  else
    if hands == s[i]
      items += 1
    else
      closet += 1
      hands = s[i]
      items = 1
    end
  end
end

closet += 1 if items > 0

puts closet
