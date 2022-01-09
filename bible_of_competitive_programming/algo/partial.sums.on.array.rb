
# This is the query(x,y) problem

nums = readline.strip.split(/\s+/).map(&:to_i)

sums = [0]
nums.each_with_index do |n, i|
  sums << sums[i] + nums[i]
end

x,y = [0,0]
until x == -1 and y == -1
  x, y = readline.strip.split(/\s+/).map(&:to_i)
  puts sums[y] - sums[x-1]
end
