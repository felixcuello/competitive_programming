// https://leetcode.com/problems/climbing-stairs/

class Solution {
public:
    int dp(int n, vector<int>& mem) {
      if(n == 1) return 1;
      if(n == 2) return 2;

      if(mem[n] > 0)
        return mem[n];

      mem[n] = dp(n-1, mem) + dp(n-2, mem);
      return mem[n];
    }

    int climbStairs(int n) {
      vector<int> mem(100, 0);
      return dp(n, mem);
    }
};
