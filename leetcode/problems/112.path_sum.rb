# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum, current_sum = nil)
  return false if root.nil?

  current_sum ||= 0
  current_sum += root.val

  return target_sum == current_sum if root.left.nil? && root.right.nil?

  has_path_sum(root.left, target_sum, current_sum) ||
    has_path_sum(root.right, target_sum, current_sum)
end
