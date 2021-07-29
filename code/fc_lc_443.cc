// https://leetcode.com/problems/island-perimeter/
class Solution {
public:
  int pos(vector<vector<int>>& g, int r, int c, int rs, int cs) {
    if(r < 0 || c < 0 || r >= rs || c >= cs) return 0;
    return g[r][c];
  }

  int islandPerimeter(vector<vector<int>>& grid) {
    int rows = grid.size();
    int cols = grid[0].size();

    int result = 0;
    for(int row=0; row<rows; row++)
      for(int col=0; col<cols; col++) {
        if(grid[row][col] == 0) continue;
        
        result += 4;
        result -= pos(grid, row-1, col, rows, cols);
        result -= pos(grid, row+1, col, rows, cols);
        result -= pos(grid, row, col-1, rows, cols);
        result -= pos(grid, row, col+1, rows, cols);
      }

    return result;
  }
};
