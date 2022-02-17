def count_vowel_strings(n, i = 0, memo = {})
  return 1 if n == 0
  return memo[[n,i]] if memo.key?([n,i])

  result = 0
  while i < 5
    temp = count_vowel_strings(n-1, i, memo)

    memo[[n-1, i]] = temp
    result += temp

    i += 1
  end

  result
end
