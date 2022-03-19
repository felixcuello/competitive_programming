# The idea is to:
#  1. start with a DFS/BFS to traverse through all the nodes
#  2. and keep track of the max LEFT + RIGHT height seen
#        (The "height" is the height of the tree)

def height(root)
  return 0 if root.nil?
  
  1 + [height(root.left), height(root.right)].max
end

def dfs(root)
  return if root.nil?
  
  @max = [
    @max,
    height(root.left) + height(root.right)
  ].max
  
  dfs(root.left)
  dfs(root.right)
end

def diameter_of_binary_tree(root)
  @max = 0
  dfs(root)
  @max
end
