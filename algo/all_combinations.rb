
def combinations(letters, current='', i=0)
  if i == letters.length
    puts current
  else
    current += letters[i]
    combinations(letters, current, i+1)
    current = current[0..-2]
    combinations(letters, current, i+1)
  end
end


combinations('abcd')

