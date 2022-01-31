# @param {String} s
# @return {Integer}
require 'set'

def length_of_longest_substring(s)
  i = 0
  j = 0
  max = 0
  t = Set.new
  
  while j < s.length
    if t.member?(s[j])
      t.delete(s[i])
      i += 1
    else
      t.add(s[j])
      j += 1
      max = t.count if t.count > max
    end
  end
  
  max
end

# No es simplemente un subset, sino que es un substring
# 'pwwkew'

# ejemplo "pkew" es un subset, pero la solución es "wke", porque es SUBSTRING (tiene que ser contiguo)


