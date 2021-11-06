# https://leetcode.com/problems/self-dividing-numbers/

def is_self_dividing?(n)
  m = n
  while m > 0
    k = m % 10
    return false if k == 0
    return false if n % k != 0
    m = (m-k) / 10
  end
  
  true
end

# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  result = []
  
  (right - left + 1).times do |n|
    n += left
    result << n if is_self_dividing?(n)
  end
  
  result
end
