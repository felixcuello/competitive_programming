// https://leetcode.com/problems/house-robber/
#include<iostream>
#include<vector>

using namespace std;

class Solution {
    vector<int> mem;

    public:
        int rob(vector<int>& nums) {
            for(int i=0; i<105; i++) mem.push_back(-1);
            return dp(nums, nums.size() - 1);
        }

        int dp(vector<int>& v, int n) {
            if(n < 0) return 0;
            if(n == 0) return v[0];
            if(mem[n] >= 0) return mem[n];

            mem[n] = max(dp(v, n-1), v[n] + dp(v, n-2));

            return mem[n];
        }
};

int main() {
    Solution* s = new Solution();
    vector<int> v = {10,0,0,3};
    //vector<int> v = {1,2,3,1};

    cout << s->rob(v) << endl;
    return 0;
}
