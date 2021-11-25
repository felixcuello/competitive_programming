# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  return true if nums.count <= 1

  jumps_left = nums[0]
  1.upto(nums.count - 1) do |i|
    jumps_left -= 1
    return false if jumps_left == -1
    jumps_left = [jumps_left, nums[i]].max
  end

  true
end
