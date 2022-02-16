def all_possible_fbt(n)
  return [] if n % 2 == 0
  return [TreeNode.new] if n == 1

  i = 1
  result = []
  while i < n
    left = all_possible_fbt(i)
    right = all_possible_fbt(n - i - 1)
    left.each do |l|
      right.each do |r|
        result << TreeNode.new(0, l, r)
      end
    end
    i += 2
  end

  result
end

# ------------------------------------------------------------
#  This is a study
#  First I created a code to count the number of trees
# ------------------------------------------------------------
# def count_fbt(n)
#   return 0 if n % 2 == 0
#   return 1 if n == 1

#   result = 0
#   i = 1
#   while i < n
#     result += count_fbt(i) * count_fbt(n - i - 1)
#     i += 2
#   end

#   result
# end

# describe 'situation' do
#   it 'base cases' do
#     expect(count_fbt(0)).to eq 0
#     expect(count_fbt(1)).to eq 1
#     expect(count_fbt(3)).to eq 1
#   end

#   it 'calculated cases' do
#     expect(count_fbt(5)).to eq 2
#     expect(count_fbt(7)).to eq 5
#   end
# end
