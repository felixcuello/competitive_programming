def remove_element(nums, val)
  c = 0
  t = 0
  n = nums.count
  result = 0
  while c < n
    while c < n && nums[c] == val
      c += 1
    end

    break if c >= n

    result += 1
    nums[t] = nums[c]
    t += 1
    c += 1
  end

  result
end

# To remove the val elements in place we need to have two pointers
# t -> pointing to the target element
# c -> pointing to the current element
