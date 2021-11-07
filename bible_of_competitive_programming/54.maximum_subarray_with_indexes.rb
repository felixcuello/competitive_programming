# https://leetcode.com/problems/maximum-subarray/submissions/
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = nums[0]
  current = max
  p_left = 0
  left = 0
  right = 0
  
  1.upto(nums.count - 1) do |i|
    if nums[i] > current + nums[i]
      p_left = i
      current = nums[i]
    else
      current += nums[i]
    end
    
    if current > max
      left = p_left
      right = i
      max = current
    end
  end
  
  puts "left=#{left} / right=#{right}"
  
  max
end
