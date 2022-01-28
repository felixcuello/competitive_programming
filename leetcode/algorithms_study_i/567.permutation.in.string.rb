# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  freq = Hash.new(0)
  s1.split('').each { |c| freq[c] += 1 }
  
  mem = Hash.new(0)
  
  a = 0
  b = 0
  c = s2.length
  
  while b < c
    if freq.key?(s2[b])
      mem[s2[b]] += 1
      
      if mem[s2[b]] > freq[s2[b]]
        while mem[s2[b]] > freq[s2[b]]
          mem[s2[a]] -= 1
          a += 1
        end
      end
      
      b += 1
    else
      mem = Hash.new(0)
      b += 1
      a = b
    end
    
    return true if mem == freq
  end
  
  false
end

# Examples
#"adc"
#"dcda"
#"ab"
#"eidbaooo"
#"ab"
#"eidboaoo"
#"hello"
#"ooolleoooleh"
#"a"
#"a"
#"ab"
#"a"
#"a"
#"ab"
#"a"
#"ba"
