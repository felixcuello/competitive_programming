# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  nc = nums.count
  dp = Array.new(nc + 1, 0)
  dp = [0, nums[0], nums[1]]
  i = 3
  while i <= nc
    dp[i] = nums[i-1] + [dp[i-2], dp[i-3]].max
    i += 1
  end
  
  [dp[nc], dp[nc-1]].max
end
