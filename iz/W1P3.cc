class Solution {
public:
    int dp(int n, vector<unsigned long long>&mem) {
        if(mem[n] == 0)
            mem[n] = dp(n-1, mem) + dp(n-2, mem);
        return mem[n];
    }

    int climbStairs(int n) {
        vector<unsigned long long> mem(50, 0);
        mem[1] = 1;
        mem[2] = 2;
        return dp(n, mem);
    }
};
