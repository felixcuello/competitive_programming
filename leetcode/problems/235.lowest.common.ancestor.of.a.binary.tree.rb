# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  a = p.val
  b = q.val
  
  if root.val > a && root.val > b
    return lowest_common_ancestor(root.left, p, q)
  elsif root.val < a && root.val < b
    return lowest_common_ancestor(root.right, p, q)
  end
  
  root
end
