def binary_search(elems, target)
  left = 0
  right = elems.count
  while left < right
    mid = (left + right) / 2
    if elems[mid] == target
      return mid
    elsif elems[mid] < target
      left = mid + 1
    else
      right = mid
    end
  end

  -1
end

elems = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]
target = elems.shuffle.first
puts "Target: #{target}"

pos = binary_search(elems, target)
puts "Position: #{pos}"
puts "Found?: #{pos == target}"
