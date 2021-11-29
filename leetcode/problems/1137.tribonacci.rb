# @param {Integer} n
# @return {Integer}
def dp(n)
  return @mem[n] if @mem.key?(n)

  @mem[n] = dp(n-1) + dp(n-2) + dp(n-3)
end

def tribonacci(n)
  @mem = {0=>0, 1=>1, 2=>1}
  dp(n)
  @mem[n]
end
