# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  max = 0
  s = Set.new
  nums.each do |n|
    s.add(n)
  end

  result = []
  1.upto(nums.count) do |n|
    result << n unless s.member?(n)
  end
  result
end
