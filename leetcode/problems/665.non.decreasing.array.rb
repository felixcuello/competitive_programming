# @param {Integer[]} nums
# @return {Boolean}
def check_possibility(nums, skip=nil)
  prev = skip == 0 ? nums[1] : nums[0]
  nums.each_with_index do |e, i|
    next if !skip.nil? && skip == i
    if e < prev
      return false unless skip.nil?
      return check_possibility(nums, i) ||
        check_possibility(nums, i-1)
    end
    prev = e
  end
  true
end
