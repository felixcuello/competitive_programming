# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  c = numbers.count
  i = 0
  j = c - 1
  while i < j
    sum = numbers[i] + numbers[j]
    if sum > target
      j -= 1
    elsif sum < target
      i += 1
    else
      break
    end
  end
  
  [i+1, j+1]
end
