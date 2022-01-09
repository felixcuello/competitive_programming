def permutations(letters, n, current = '')
  if current.length == n
    puts current
  else
    0.upto(letters.count - 1) do |i|
      c = current + letters[i]
      permutations(letters - [letters[i]], n, c)
    end
  end
end

string = '321'
permutations(string.split(''), string.length)
