# @param {Integer} num_rows
# @return {Integer[][]}
def k(r,c)
  "#{r}:#{c}"
end

def dp(row, col)
  return 1 if row == 1 && col == 1
  return 0 if col < 1 || col > row

  k = k(row,col)
  return @mem[k] if @mem.key?(k)

  @mem[k] = dp(row-1, col-1) + dp(row-1, col)
end

def generate(num_rows)
  @mem = {}
  result = []
  1.upto(num_rows) do |row|
    temp = []
    1.upto(row) do |col|
      temp << dp(row, col)
    end
    result << temp
  end
  result
end

# 1
# 1  1
# 1  2  1
# 1  3  3  1
# 1  4  6  4  1
# 1  5 10 10  5  1
