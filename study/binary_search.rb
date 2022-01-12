v = [1, 2, 3, 5, 6, 7, 9, 10, 11, 12, 13, 15, 16, 20, 50, 55, 60, 67]

def binary_search(n, v)
  min = 0
  max = v.count - 1

  while min <= max
    guess = (min + max) / 2
    return true if v[guess] == n

    if v[guess] > n
      max = guess - 1
    else
      min = guess + 1
    end
  end

  false
end

describe 'binary search' do
  context 'even number of elements' do
    context 'number is in array' do
        [1, 3, 11, 12, 13, 20, 67].each do |number|
        it "must find the number: #{number}" do
            expect(binary_search(number, v)).to be true
        end
        end
    end

    context 'number is NOT in array' do
        [0, 14, 68].each do |number|
        it "must not find the number: #{number}" do
            expect(binary_search(number, v)).to be false
        end
        end
    end
  end

  context 'odd number of elements' do
    v << 69

    context 'number is in array' do
        [1, 3, 11, 12, 13, 20, 69].each do |number|
        it "must find the number: #{number}" do
            expect(binary_search(number, v)).to be true
        end
        end
    end

    context 'number is NOT in array' do
        [0, 14, 100].each do |number|
        it "must not find the number: #{number}" do
            expect(binary_search(number, v)).to be false
        end
        end
    end
  end
end
