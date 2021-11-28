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
# @return {Integer[][]}
def level_order(root)
  return [] if root.nil?

  tq = [root]
  result = []
  process = true
  while process
    tr = []
    q = tq
    tq = []
    process = false
    while q.count > 0
      process = true
      e = q.shift
      tr << e.val
      tq << e.left if !e.left.nil?
      tq << e.right if !e.right.nil?
    end
    result << tr if tr.count > 0
  end

  result
end
