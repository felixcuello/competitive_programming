require 'rspec'

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0

  num = []
  while x > 0
    k = x % 10
    num << k
    x = (x-k) / 10
  end

  i = 0
  j = num.count - 1
  while i<j
    return false if num[i] != num[j]
    i += 1
    j -= 1
  end

  true
end

RSpec.describe 'problem' do
  it 'covers negatives' do
    expect(is_palindrome(-1)).to be false
  end

  it 'covers non-palindromes' do
    expect(is_palindrome(12)).to be false
  end

  it 'covers palindromes with > 1 numbers' do
    expect(is_palindrome(121)).to be true
  end

  it 'covers size 1 palindromes' do
    expect(is_palindrome(1)).to be true
  end
end
