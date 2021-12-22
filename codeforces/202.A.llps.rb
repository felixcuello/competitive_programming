word = readline.strip.split ''

max = 0
freq = Hash.new(0)
word.each do |letter|
  max = letter.ord if letter.ord > max
  freq[letter.ord] += 1
end

puts max.chr * freq[max]
