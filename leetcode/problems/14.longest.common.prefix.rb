# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  i = 0
  strs.each_with_index do |s, j|
    i = j if s.length > strs[i].length
  end
  
  result = ''
  strs[i].split('').each_with_index do |l, i|
    strs.each do |s|
      return result if s[i] != l
    end
    result += l
  end
  
  result
end
