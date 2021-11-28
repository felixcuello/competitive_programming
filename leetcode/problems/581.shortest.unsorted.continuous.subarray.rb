# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  return 0 if nums.count <= 1

  lA = 1
  1.upto(nums.count - 1) do |i|
    break if nums[i] < nums[i-1]
    lA += 1
  end

#  puts "#{__LINE__} => #{lA}"

  pd = lA
  while lA > 0 && pd < nums.count
    if nums[lA - 1] > nums[pd]
      lA -= 1
    else
      pd += 1
    end
  end

#  puts "#{__LINE__} => #{lA}"

  lB = 1
  (nums.count - 2).downto(0) do |i|
    break if nums[i] > nums[i+1]
    lB += 1
  end

  pi = nums.count - lB - 1
  while pi >= 0 && lB > 0
    if nums[pi] > nums[nums.count - lB]
      lB -= 1
    else
      pi -= 1
    end
  end

  result = (nums.count - lA - lB)

  result < 0 ? 0 : result
end
