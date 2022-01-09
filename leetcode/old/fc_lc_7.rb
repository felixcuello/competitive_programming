# @param {Integer} x
# @return {Integer}
def reverse(x)
  if x >= 0
    result = x.to_s.reverse.to_i
    if result > 2147483647
      return 0
    else
      result
    end

  else
    result = (-x).to_s.reverse.to_i * -1
    if result < -2147483648
      return 0
    else
      result
    end
  end
end
