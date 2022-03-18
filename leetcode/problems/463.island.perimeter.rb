# @param {Integer[][]} grid
# @return {Integer}
def dfs(grid, row, col)
  return 1 if row < 0 || row >= grid.count
  return 1 if col < 0 || col >= grid[0].count
  return 1 if grid[row][col] == 0
  return 0 if grid[row][col] == -1
  
  grid[row][col] = -1
  dfs(grid, row-1, col) +
    dfs(grid, row+1, col) +
    dfs(grid, row, col-1) +
    dfs(grid, row, col+1)
end

def island_perimeter(grid)
  rows = grid.count
  cols = grid[0].count
  
  rows.times do |row|
    cols.times do |col|
      if grid[row][col] == 1
        return dfs(grid, row, col)
      end
    end
  end
  
  0
end
