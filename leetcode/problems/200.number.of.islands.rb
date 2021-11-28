# @param {Character[][]} grid
# @return {Integer}
def sink(grid, row, col)
  return if row < 0
  return if col < 0
  return if row >= grid.count
  return if col >= grid[0].count
  return if grid[row][col] == '0'

  grid[row][col] = '0'

  sink(grid, row-1, col)
  sink(grid, row+1, col)
  sink(grid, row, col-1)
  sink(grid, row, col+1)
end

def num_islands(grid)
  islands = 0
  0.upto(grid.count - 1) do |row|
    0.upto(grid[0].count - 1) do |col|
      if grid[row][col] == '1'
        islands += 1
        sink(grid, row, col)
      end
    end
  end
  puts grid.inspect
  islands
end
