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
# @return {Boolean}
def height(root)
  return 0 if root.nil?

  [height(root.left) + 1, height(root.right) + 1].max
end

def is_balanced(root)
  return true if root.nil?

  hl = height(root.left)
  hr = height(root.right)

  ((hr - hl).abs <= 1) && is_balanced(root.left) && is_balanced(root.right)
end
