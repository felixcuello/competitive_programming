def lp(root, val)
  return 0 if root.nil?
  return 0 if root.val != val

  1 + [lp(root.left, val), lp(root.right, val)].max
end

def longest_univalue_path(root)
  return 0 if root.nil?

  left = lp(root.left, root.val)
  right = lp(root.right, root.val)

  [
    left + right,
    longest_univalue_path(root.left),
    longest_univalue_path(root.right)
  ].max
end
