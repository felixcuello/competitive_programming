class Solution {
public:
  int dfs(vector<vector<int>>& grid, int row, int col, int rows, int cols, int steps = 0) {
    if(row < 0 || col < 0 || row >= rows || col >= cols)
      return 0;
    if(grid[row][col] == 0)
      return 0;
    if(steps == 25)
      return 0;
    
    int max = 0;
    const vector<pair<int,int>> movements = {{1,0},{-1,0},{0,1},{0,-1}};
    for(int m=0; m<4; m++) {
      int newrow = row + movements[m].first;
      int newcol = col + movements[m].second;
      
      if(newrow < 0 || newcol < 0 || newrow >= grid.size() || newcol >= grid[0].size())
        continue;
      
      int saved = grid[row][col];
      grid[row][col] = 0;
      int result = saved + dfs(grid, newrow, newcol, rows, cols, steps + 1);
      if(result > max)
        max = result;
      grid[row][col] = saved;
    }
    
    return max;
  }
  
  int getMaximumGold(vector<vector<int>>& grid) {
    int rows = grid.size();
    int cols = grid[0].size();
    
    int max = 0;
    for(int row=0; row<rows; row++)
      for(int col=0; col<cols; col++) {
        int current = dfs(grid, row, col, rows, cols);
        if(current > max)
          max = current;
      }
    return max;
  }
};
