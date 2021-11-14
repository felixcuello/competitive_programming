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
# @param {TreeNode} sub_root
# @return {Boolean}
def compare(root, sub_root)
  return true if root.nil? && sub_root.nil?
  return false if root.nil? && !sub_root.nil?
  return false if !root.nil? && sub_root.nil?
  return false if root.val != sub_root.val

  compare(root.left, sub_root.left) && compare(root.right, sub_root.right)
end

def is_subtree(root, sub_root)
  return false if root.nil?

  c = compare(root, sub_root)
  return true if c

  is_subtree(root.left, sub_root) || is_subtree(root.right, sub_root)
end
