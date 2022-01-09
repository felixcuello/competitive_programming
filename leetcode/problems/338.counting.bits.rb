# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  @result = []
  @mem = {0 => 0}
  0.upto(n) do |i|
    bits = 0
    current = i
    while current > 0
      if @mem.key?(current)
        bits += @mem[current]
        break
      end
      bits += (current % 2 == 0) ? 0 : 1
      current = current >> 1
    end
    @mem[i] = bits
    @result << bits
  end
  @result
end
