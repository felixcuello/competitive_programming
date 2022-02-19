n = readline.strip.to_i

cols = Array.new(n, 0)
rows = Array.new(n, 0)
n.times do |i|
  temp_cols = readline.strip.split(/\s+/).map(&:to_i)

  rows[i] = temp_cols.sum
  n.times do |j|
    cols[j] += temp_cols[j]
  end
end

result = 0
n.times do |row|
  n.times do |col|
    result += 1 if cols[col] > rows[row]
  end
end

puts result
