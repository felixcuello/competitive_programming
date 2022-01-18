# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  zeroes = 0
  c = nums.count
  i = 0
  j = 0
  while i < c
    if nums[i].zero?
      zeroes += 1
    else
      nums[j] = nums[i]
      j += 1
    end
    i += 1
  end
  
  zeroes.times do |i|
    nums[c - i - 1] = 0
  end
end
