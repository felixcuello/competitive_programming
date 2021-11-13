# https://leetcode.com/problems/maximum-subarray/
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = 0
  
  0.upto(nums.count - 1) do |i|
    current = 0
    i.upto(nums.count - 1) do |j|
      current += nums[j]
      max = current if current > max
    end
  end
  
  max
end

