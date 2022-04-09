# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  l = 0
  r = height.count - 1
  
  max = 0
  while l < r
    max = [max, [height[l], height[r]].min * (r - l)].max
    if height[l] > height[r]
      r -= 1
    else
      l += 1
    end
  end
  max
end

