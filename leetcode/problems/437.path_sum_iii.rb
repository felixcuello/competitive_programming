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
# @return {Integer}
def dfs(root, target_sum, current_sum)
  return 0 if root.nil?

  @cantidad += 1 if root.val + current_sum == target_sum

  dfs(root.left, target_sum, current_sum + root.val)
  dfs(root.right, target_sum, current_sum + root.val)
end

def all_path(root, target_sum)
  return 0 if root.nil?

  dfs(root, target_sum, 0)
  all_path(root.left, target_sum)
  all_path(root.right, target_sum)
end

def path_sum(root, target_sum)
  @cantidad = 0

  all_path(root, target_sum)

  @cantidad
end
