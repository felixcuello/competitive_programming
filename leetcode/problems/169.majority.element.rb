# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  count = Hash.new(0)
  nums.each do |n|
    count[n] += 1
  end

  winner = 0
  max = -1
  count.each do |k,v|
    if v > max
      winner = k
      max = v
    end
  end

  winner
end
