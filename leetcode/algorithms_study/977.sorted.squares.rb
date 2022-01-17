# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  c = nums.count
  i = 0

  # find middle ground
  while i < c && nums[i] < 0
    i += 1
  end

  j = i
  i -= 1

  result = []
  modif_a = true
  modif_b = true
  while i >= 0 && j < c
    a = nums[i]**2 if modif_a
    b = nums[j]**2 if modif_b

    modif_a = false
    modif_b = false

    if a == b
      result += [a, b]
      i -= 1
      j += 1
      modif_a = true
      modif_b = true
    elsif a < b
      result << a
      modif_a = true
      i -= 1
    elsif b < a
      result << b
      modif_b = true
      j += 1
    end
  end

  while i >= 0
    result << nums[i]**2
    i -= 1
  end

  while j < c
    result << nums[j]**2
    j += 1
  end

  result
end

context 'probando este coso' do
  it 'must work with all numbers' do
    expect(sorted_squares((-10000..10000).to_a)).to eq ((-10000..10000).to_a.map {|e| e**2}.sort)
  end

  it 'must work' do
    expect(sorted_squares([-10000,-9999,-7,-5,0,0,10000])).to eq [0,0,25,49,99980001,100000000,100000000]
  end
end
