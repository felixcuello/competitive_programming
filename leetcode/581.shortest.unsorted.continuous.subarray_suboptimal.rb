# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  ns = nums.sort

  l = 0
  r = nums.count - 1

  while l <= r
    break if nums[l] != ns[l]
    l += 1
  end

  while r >= 0
    break if nums[r] != ns[r]
    r -= 1
  end

  r <= l ? 0 : (r - l + 1).abs
end
