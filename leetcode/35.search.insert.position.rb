# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  nums.each_with_index do |e,i|
    return i if e >= target
  end

  nums.count
end
