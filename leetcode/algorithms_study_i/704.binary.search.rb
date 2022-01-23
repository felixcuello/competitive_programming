# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  min = 0
  max = nums.count - 1
  
  while min <= max
    guess = min + (max - min / 2)
    
    return guess if nums[guess] == target
    
    if target > nums[guess]
      min = guess + 1
    else
      max = guess - 1
    end
  end
  
  -1
end
