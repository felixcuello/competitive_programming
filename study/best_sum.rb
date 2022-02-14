def best_sum(target_sum, numbers, memo = {})
  return memo[target_sum] if memo.key?(target_sum)
  return [] if target_sum == 0
  return nil if target_sum < 0

  best = nil
  numbers.each do |n|
    result = best_sum(target_sum - n, numbers, memo)

    next if result.nil?

    current = [n] + result

    best = current if(best.nil? || current.length < best.length)
  end

  memo[target_sum] = best
  best
end

puts best_sum(7, [5, 3, 4, 7]).inspect
puts best_sum(8, [2, 3, 5]).inspect
puts best_sum(8, [1, 4, 5]).inspect
puts best_sum(100, [1, 2, 5, 25]).inspect
