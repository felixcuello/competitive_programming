# https://leetcode.com/problems/palindrome-number/
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0
  
  stack = []
  
  while x > 0
    k = x % 10
    stack << k
    x = (x-k) / 10
  end
  
  i = 0
  j = stack.count - 1
  
  while i < j
    return false if stack[i] != stack[j]
    i += 1
    j -= 1
  end
  
  true
end
