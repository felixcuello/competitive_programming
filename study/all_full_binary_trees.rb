#!/usr/bin/env ruby

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def print(TreeNode root)
    return '' if root.nil?

    puts root.val.to_s + ' - ' + print(root.left) + ' ' + print(root.right)
  end
end

def all_full_binary_tree(n)
end
