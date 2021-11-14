# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  return nums if k == 0

  c = nums.count
  copy = nums.dup
  0.upto(c-1) do |i|
    nums[i] = copy[(c - k + i) % c]
  end
end
