n = readline.strip.to_i
grades = readline.strip.split(/\s/).map(&:to_i)

bigger = {}
result = []

grades.each do |g|
  unless bigger.key?(g)
    count = 1
    grades.each do |g2|
      count += 1 if g2 > g
    end
    bigger[g] = count
  end
  
  result << bigger[g]
end

puts result.join(' ')

