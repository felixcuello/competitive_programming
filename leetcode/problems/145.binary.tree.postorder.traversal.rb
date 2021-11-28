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
# @return {Integer[]}
def pot(root)
  return if root.nil?

  pot(root.left)
  pot(root.right)

  @result << root.val
end

def postorder_traversal(root)
  @result = []
  pot(root)
  @result
end
