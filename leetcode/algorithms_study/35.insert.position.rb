# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  min = 0
  max = nums.count - 1
  guess = 0
  while min <= max
    guess = (min + max) / 2

    return guess if nums[guess] == target

    if nums[guess] > target
      max = guess - 1
    else
      min = guess + 1
    end
  end

  min
end
