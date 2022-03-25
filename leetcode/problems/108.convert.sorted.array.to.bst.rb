# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums, lo = 0, hi = nil)
  return nil if lo == hi
  
  hi = nums.count if hi.nil?
  md = (hi + lo) / 2
  
  TreeNode.new(
    nums[md],
    sorted_array_to_bst(nums, lo, md),
    sorted_array_to_bst(nums, md + 1, hi)
  )
end
