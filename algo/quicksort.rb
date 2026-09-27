# frozen_string_literal: true

def quicksort(elems)
  n = elems.count
  return elems if n <= 1

  pivot = elems[n - 1]
  left = []
  right = []

  (n - 1).times do |i|
    if elems[i] <= pivot
      left << elems[i]
    else
      right << elems[i]
    end
  end

  quicksort(left) + [pivot] + quicksort(right)
end

arr = [1, 2, 3, 4, 5, 5, 5, 6, 6, 7, 8, 9]
shuffled = arr.shuffle

puts arr == quicksort(shuffled)
