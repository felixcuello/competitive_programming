# https://leetcode.com/problems/self-dividing-numbers/
# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing(n)
  x = n
  while x > 0
    i = x % 10
    return false if i == 0
    return false if n % i != 0
    x = (x-i) / 10
  end
  true
end

def self_dividing_numbers(left, right)
  result = []
  for i in (left..right)
    result << i if self_dividing(i)
  end
  result
end
