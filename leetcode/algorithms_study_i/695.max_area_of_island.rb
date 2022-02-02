# @param {Integer[][]} grid
# @return {Integer}
def area_island(grid, row, col)
  return 0 if row < 0 || row >= grid.count
  return 0 if col < 0 || col >= grid[0].count
  return 0 if grid[row][col] == 0
  
  grid[row][col] = 0
  1 +
    area_island(grid, row - 1, col) +
    area_island(grid, row + 1, col) +
    area_island(grid, row, col - 1) +
    area_island(grid, row, col + 1)
end

def max_area_of_island(grid)
  rows = grid.count
  cols = grid[0].count
  
  max = 0
  current = 0
  
  rows.times do |row|
    cols.times do |col|
      if grid[row][col] == 1
        current = area_island(grid, row, col)
        max = current if current > max
      else
        current = 0
      end
    end
  end
  
  max
end
