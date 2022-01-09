# @param {Integer} n
# @return {Integer}
def dp(n)
  return @mem[n] if @mem.key?(n)
  
  @mem[n] = dp(n-1) + dp(n-2)
end

def fib(n)
  @mem = {0=>0, 1=>1}
  dp(n)
  @mem[n]
end

# dp(n) : "Fibonacci number up to n"
# dp(0) : 1
# dp(1) : 1
# dp(n) : dp(n-1) + dp(n-2)
