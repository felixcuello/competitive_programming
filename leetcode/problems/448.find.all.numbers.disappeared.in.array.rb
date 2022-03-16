#-------------------------------------------------------
#  NEW: Optimal solution with no extra space
#-------------------------------------------------------
# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  nums.count.times do |i|
    pos = nums[i].abs - 1
    nums[pos] *= -1 if nums[pos] > 0
  end
  
  missing = []
  nums.count.times do |i|
    missing << i+1 if nums[i] > 0
  end
  
  missing
end

# @param {Integer[]} nums
# @return {Integer[]}
#def find_disappeared_numbers(nums)
#  max = 0
#  s = Set.new
#  nums.each do |n|
#    s.add(n)
#  end
#
#  result = []
#  1.upto(nums.count) do |n|
#    result << n unless s.member?(n)
#  end
#  result
#end
