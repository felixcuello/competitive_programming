// This solution is 82% faster than other C++ submissions
class Solution {
public:
  void setZeroes(vector<vector<int>>& matrix) {
    int rows = matrix.size();
    int cols = matrix[0].size();
    bool wipe_first_col = false;
    bool wipe_first_row = false;

    for(int row=0; row<rows; row++)
      for(int col=0; col<cols; col++) {
        if(matrix[row][col] == 0) {
          if(row == 0) wipe_first_row = true;
          if(col == 0) wipe_first_col = true;
          matrix[row][0] = 0;
          matrix[0][col] = 0;
        }
      }
    
    for(int col=1; col<cols; col++)
      if(matrix[0][col] == 0)
        for(int row=0; row<rows; row++)
          matrix[row][col] = 0;

    for(int row=1; row<rows; row++)
      if(matrix[row][0] == 0)
        for(int col=0; col<cols; col++)
          matrix[row][col] = 0;

    if(wipe_first_row)
      for(int col=0; col<cols; col++)
        matrix[0][col] = 0;
    if(wipe_first_col)
      for(int row=0; row<rows; row++)
        matrix[row][0] = 0;
  }
};
