#include <vector>
#include <iostream>
#include <bitset>

using namespace std;

class Solution {
  int MAX = 10001;
public:
  int dp(vector<int>&mem, vector<int>&coins, int amount) {
    if(amount < 0) return MAX;
    if(mem[amount] != MAX) return mem[amount];

    vector<int> result;
    for(int i=0; i<coins.size(); i++)
      result.push_back(dp(mem, coins, amount-coins[i]));

    mem[amount] = *min_element(result.begin(), result.end()) + 1;
    return mem[amount];
  }

  int coinChange(vector<int>& coins, int amount) {
    vector<int> mem(MAX, MAX);
    vector<int> real_coins;
    for(int i=0; i<coins.size(); i++)
        if(coins[i] < MAX) {
            mem[coins[i]] = 1;
            real_coins.push_back(coins[i]);
        }

    int result = dp(mem, coins, amount);

    return result < MAX ? result : -1;
  }
};


int main() {
    Solution* s = new Solution();
    //vector<int> coins = {186,419,83,408}; int amount = 6249;
    vector<int> coins = {1,3}; int amount = 1;
    cout << "result = " << s->coinChange(coins, amount) << endl;
    return 0;
}
