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
def sum(root)
  return 0 if root.nil?
  
  root.val + sum(root.right) + sum(root.left)
end

def convert_bst(root, pred = 0)
  return nil if root.nil?
  
  root.val += pred + sum(root.right)
  
  convert_bst(root.right, pred)
  convert_bst(root.left, root.val)
  
  root
end
