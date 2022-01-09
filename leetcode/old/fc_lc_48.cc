class Solution {
public:
    void rotate(vector<vector<int>>& matrix) {
      int n = matrix[0].size();
      
      // transpose
      for(int row=0; row<n; row++)
        for(int col=row+1; col<n; col++) {
          int t = matrix[col][row];
          matrix[col][row] = matrix[row][col];
          matrix[row][col] = t;
        }
          
      // switch cols
      for(int col=0; col+col<n; col++)
        for(int row=0; row<n; row++) {
          int t = matrix[row][col];
          matrix[row][col] = matrix[row][n-col-1];
          matrix[row][n-col-1] = t;
        }
    }
};

