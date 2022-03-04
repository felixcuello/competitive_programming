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
# @return {String[]}
def dfs(root, result, current = '')
  return if root.nil?
  
  if root.left.nil? && root.right.nil?
    current += root.val.to_s
    result << current
    return
  end
  
  current += "#{root.val}->"
  dfs(root.left, result, current) unless root.left.nil?
  dfs(root.right, result, current) unless root.right.nil?
end

def binary_tree_paths(root)
  result = []
  dfs(root, result)
  result
end
