# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  nc = nums.count
  nc.times do |i|
    pos = nums[i].abs - 1
    return (pos + 1) if nums[pos].negative?
    nums[pos] *= -1
  end
end
