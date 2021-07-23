// https://leetcode.com/problems/number-of-islands/
class Solution {
public:
  void sink(vector<vector<char>>& grid, int row, int col, int rows, int cols) {
    if(row < 0 || col < 0 || row >= rows || col >= cols) return;
    if(grid[row][col] == '0') return;
    
    grid[row][col] = '0';
    
    sink(grid, row-1, col, rows, cols);
    sink(grid, row+1, col, rows, cols);
    sink(grid, row, col-1, rows, cols);
    sink(grid, row, col+1, rows, cols);
  }

  int numIslands(vector<vector<char>>& grid) {
    int result = 0;
    int rows = grid.size();
    int cols = grid[0].size();

    for(int row=0; row<rows; row++) {
      for(int col=0; col<cols; col++) {
        if(grid[row][col] == '0') continue;
        
        result++;
        sink(grid, row, col, rows, cols);
      }
    }
    return result;
  }
};
