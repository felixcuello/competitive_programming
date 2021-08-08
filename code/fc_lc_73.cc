// This is my original solution
// Reading the hints (specifically the hint #4 says that you can use something to keep track
// without the need of having an extra vector of points like I did)
class Solution {
public:
  void cross(vector<vector<int>>& matrix, int row, int col, int rows, int cols) {
    int r = row;
    while(r>=0) { matrix[r][col] = 0; r--; }
    r = row+1;
    while(r<rows) { matrix[r][col] = 0; r++; }
    int c = col-1;
    while(c>=0) { matrix[row][c] = 0; c--; }
    c = col+1;
    while(c<cols) { matrix[row][c] = 0; c++; }
  }
  void setZeroes(vector<vector<int>>& matrix) {
    int rows = matrix.size();
    int cols = matrix[0].size();
    
    vector<pair<int,int>> points;
    for(int row=0; row<rows; row++)
      for(int col=0; col<cols; col++)
        if(matrix[row][col] != 0)
          continue;
        else
          points.push_back({row,col});
    
    for(int i=0; i<points.size(); i++)
      cross(matrix, points[i].first, points[i].second, rows, cols);
  }
};
