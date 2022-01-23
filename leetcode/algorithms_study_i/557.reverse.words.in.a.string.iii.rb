# @param {String} s
# @return {String}
def reverse(s, a, b)
  while a < b
    t = s[a]
    s[a] = s[b]
    s[b] = t
    a += 1
    b -= 1
  end
end

def reverse_words(s)
  a = 0
  c = s.length
  
  while a < c   
    b = a
    if s[b] != ' '
      while b < c && s[b] != ' '
        b += 1
      end
      # puts "a=#{a} / b=#{b}"
      reverse(s, a, b-1)
      a = b
    end
    a += 1
  end
  
  s
end
