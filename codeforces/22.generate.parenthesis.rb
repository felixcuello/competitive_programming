# @param {Integer} n
# @return {String[]}
def bt(n, current, result, open = 0, close = 0)
  if current.length == n+n
    result << current
    return
  end
  
  bt(n, current + ')', result, open, close + 1) if close < open
  bt(n, current + '(', result, open + 1, close)  if open < n
end

def generate_parenthesis(n)
  result = []
  bt(n, '', result)
  result
end
