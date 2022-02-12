# rubocop:disable Metrics/MethodLength
def can_sum(target_sum, numbers, memo = {})
  return memo[target_sum] if memo.key?(target_sum)
  return true if target_sum == 0
  return nil if target_sum < 0

  numbers.each do |n|
    if can_sum(target_sum - n, numbers, memo)
      memo[target_sum - n] = true
      return true
    end
  end

  memo[target_sum] = false
  false
end

describe 'examples' do
  it 'can actually sum' do
    expect(can_sum(30, [5])).to be true
    expect(can_sum(121, [11])).to be true
    expect(can_sum(200, [3, 6, 10])).to be true
  end

  it 'cannot sum' do
    expect(can_sum(5, [2, 6])).to be false
    expect(can_sum(300, [7, 14])).to be false
  end
end
# rubocop:enable Metrics/MethodLength
