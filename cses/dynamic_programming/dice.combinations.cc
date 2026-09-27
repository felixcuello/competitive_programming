#include <iostream>
#include <map>

#define MOD 1000000007

using namespace std;

int solve(int x, map<int, int>& memo) {
  if(x < 0) return 0;
  if(memo.find(x) != memo.end()) return memo[x];

  memo[x] = 0;

  for(int d=1; d<=6; d++) {
    if(x - d < 0) continue;
    memo[x] = (memo[x] + solve(x-d, memo) % MOD) % MOD;
  }

  return memo[x];
}

int main() {
  int n;
  map<int, int> memo;
  memo[0] = 1;

  cin >> n;
  cout << solve(n, memo) << endl;
}

/*
 *
 * solve(x)
 *     0                                                     si x < 0
 *     1                                                     si x = 0
 *     solve(x-d1) + solve(x-d2) + ... + solve(x-d6)         si x > 0
 */
