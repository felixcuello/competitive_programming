
def letter_case_permutation(s, current='', i=0)
  if s.length == i
    return [current]
  end
  
  if /[a-z]/.match s[i]
    return letter_case_permutation(s, current + s[i], i + 1) +
      letter_case_permutation(s, current + s[i].upcase, i + 1)
  elsif /[A-Z]/.match s[i]
    return letter_case_permutation(s, current + s[i], i + 1) +
      letter_case_permutation(s, current + s[i].downcase, i + 1)
  else
    return letter_case_permutation(s, current + s[i], i + 1)
  end
end
