# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  i = 0
  j = 0

  while (i < s.length) && (j < t.length)
    if s[i] == t[j]
      i += 1
      j += 1
    elsif s[i] != t[j]
      j += 1
    end
  end

  i == s.length
end
