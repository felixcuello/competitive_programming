def keep_land(map, row, col)
  rows = map.count
  cols = map[0].count

  return if row < 0
  return if col < 0
  return if row >= rows
  return if col >= cols
  return if map[row][col] != 1

  map[row][col] = -1

  keep_land(map, row-1, col)
  keep_land(map, row+1, col)
  keep_land(map, row, col-1)
  keep_land(map, row, col+1)
end

def remove_islands(map)
  rows = map.count
  cols = map[0].count

  #  goes top and bottom
  cols.times do |col|
    keep_land(map, 0, col) if map[0][col] == 1
    keep_land(map, rows-1, col) if map[rows-1][col] == 1
  end

  #  goes left and right
  rows.times do |row|
    keep_land(map, row, 0) if map[row][0] == 1
    keep_land(map, row, cols-1) if map[row][cols-1] == 1
  end

  rows.times do |row|
    cols.times do |col|
      map[row][col] = 0 if map[row][col] == 1
      map[row][col] = map[row][col].abs
    end
  end

  map
end


describe 'remove_islands' do
  context 'big map' do
    let(:map)     { [ [1, 1, 0, 0, 1], [0, 1, 0, 1, 0], [1, 0, 1, 0, 1], [0, 0, 1, 0, 1], [0, 1, 0, 0, 1] ] }
    let(:removed) { [ [1, 1, 0, 0, 1], [0, 1, 0, 0, 0], [1, 0, 0, 0, 1], [0, 0, 0, 0, 1], [0, 1, 0, 0, 1] ] }

    it 'remove some islands' do
      expect(remove_islands(map)).to eq(removed)
    end
  end

  context 'small map' do
    let(:map)     { [ [0,0,0], [0, 1, 0], [0, 0, 0] ] }
    let(:removed) { [ [0,0,0], [0, 0, 0], [0, 0, 0] ] }

    it 'remove some islands' do
      expect(remove_islands(map)).to eq(removed)
    end
  end

  context 'cross island' do
    let(:map)     { [ [0,0,0,0,0], [0,0,1,0,0],[0,1,1,1,0],[0,0,1,0,0],[0,0,0,0,0] ] }
    let(:removed) { [ [0,0,0,0,0], [0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0] ] }

    it 'remove some islands' do
      expect(remove_islands(map)).to eq(removed)
    end
  end
end

describe 'no_islands' do
  context 'big map' do
    let(:map)     { [ [1, 1, 1, 1, 1], [1, 0, 0, 0, 1], [1, 0, 0, 0, 1], [1, 0, 0, 0, 1], [1, 1, 1, 1, 1] ] }
    let(:removed) { [ [1, 1, 1, 1, 1], [1, 0, 0, 0, 1], [1, 0, 0, 0, 1], [1, 0, 0, 0, 1], [1, 1, 1, 1, 1] ] }
  
    it 'remove some islands' do
      expect(remove_islands(map)).to eq(removed)
    end
  end

  context 'small map' do
    let(:map)     { [ [1] ] }
    let(:removed) { [ [1] ] }

    it 'remove some islands' do
      expect(remove_islands(map)).to eq(removed)
    end
  end

  context 'cross island' do
    let(:map)     { [ [0,0,1,0,0], [0,0,1,0,0],[1,1,1,1,1],[0,0,1,0,0],[0,0,1,0,0] ] }
    let(:removed) { [ [0,0,1,0,0], [0,0,1,0,0],[1,1,1,1,1],[0,0,1,0,0],[0,0,1,0,0] ] }

    it 'remove some islands' do
      expect(remove_islands(map)).to eq(removed)
    end
  end
end
