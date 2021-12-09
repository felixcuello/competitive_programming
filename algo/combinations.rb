
def combinations(letters, current = '', i = 0)
  if i == letters.length
    puts current
  else
    combinations(letters, current + letters[i], i + 1)
    combinations(letters, current, i + 1)
  end
end

combinations('123')
