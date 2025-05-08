# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  result = 1
  i = 0
  j = 1
  n = nums.size
  while j < n
    while j<n && nums[i] != nums[j]
      i += 1
      nums[i] = nums[j]
      j += 1
      result += 1
    end
    while j < n && nums[i] == nums[j]
      j += 1
    end
  end
  result
end

# 1 2 2
#   i
#     j
