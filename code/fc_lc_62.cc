// https://leetcode.com/problems/unique-paths/

class Solution {
  map<pair<unsigned long long, unsigned long long>, unsigned long long> dp;
public:
    int uniquePaths(int m, int n) {
      for(int i=0; i<m; i++)
        dp[{i, 0}] = 0;

      for(int i=0; i<n; i++)
        dp[{0, i}] = 0;

      dp[{0,1}] = 1;
      dp[{1,0}] = 0;

      for(int row=1; row<=m; row++)
        for(int col=1; col<=n; col++)
          dp[{row,col}] = dp[{row-1,col}] + dp[{row, col-1}];

      return dp[{m,n}];
    }
};
