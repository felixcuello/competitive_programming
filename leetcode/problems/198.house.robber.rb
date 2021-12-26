# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  dp = [nums[0]]
  dp << [nums[0], nums[1]].max if nums.count >= 2
  dp << [nums[0] + nums[2], nums[1]].max if nums.count >= 3
  
  3.upto(nums.count-1) do |i|
    dp[i] = [nums[i] + dp[i-2], nums[i] + dp[i-3]].max
  end

  x = nums.count - 1
  [dp[x], dp[x-1]].max
end

# dp(n) : "The best way to rob houses up to n-th house"
# dp(1) : nums[0]
# dp(2) : [nums[0], nums[1]].max
# dp(n) : [nums[n] + dp(n-2), nums[n] + dp(n-3)]
