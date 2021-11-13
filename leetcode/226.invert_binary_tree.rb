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
# @return {TreeNode}
def swap(root)
  temp = root.left
  root.left = root.right
  root.right = temp
end

def invert_tree(root)
  return root if root.nil?

  result = root

  swap(root)
  invert_tree(root.left)
  invert_tree(root.right)

  result
end
