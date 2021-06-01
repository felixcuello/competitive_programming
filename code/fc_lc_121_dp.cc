// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
#include <iostream>
#include <vector>
#include <map>

using namespace std;

class Solution {
    bitset<100005> seen;
    map<int, pair<int, int> > mem;

    public:
        int maxProfit(vector<int>& prices) {
            pair<int,int> result = dp(prices, prices.size() - 1);
            return result.first;
        }

        pair<int, int> dp(vector<int>& v, int n) {
            if(n == 0)
                return make_pair(0, v[0]);

            if(seen[n])
                return mem[n];

            seen[n] = true;

            mem[n] = make_pair(
                max(dp(v, n-1).first, v[n] - dp(v, n-1).second),
                min(dp(v, n-1).second, v[n])
            );

            return mem[n];
        }
};

int main() {
    Solution* s = new Solution();
    vector<int> v;
    for(int i=1; i<=100000; i++)
        v.push_back(i);

    cout << s->maxProfit(v) << endl;

    return 0;
}
