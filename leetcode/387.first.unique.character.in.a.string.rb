# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  letters = s.split('')
  freq = Hash.new(0)

  letters.each do |l|
    freq[l] += 1
  end

  letters.each_with_index do |l, i|
    return i if freq[l] == 1
  end

  return -1
end
