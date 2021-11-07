# https://leetcode.com/problems/maximum-subarray/
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = nums[0]
  current = max
  
  1.upto(nums.count - 1) do |i|
    current = [nums[i], current + nums[i]].max
    max = current if current > max
  end
  
  max
end
