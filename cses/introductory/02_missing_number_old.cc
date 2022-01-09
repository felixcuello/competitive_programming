// https://cses.fi/problemset/task/1083
#include <bits/stdc++.h>

#define FEQ(a,b) (abs(a-b) < 1e-9)
#define RANGE(i,a,b) for(int i=a; i<b; i++)

using namespace std;

int main() {
  // freopen("input.txt", "r", stdin);
  // freopen("output.txt", "w", stdin);
  ios::sync_with_stdio(0);
  cin.tie(0);

  bitset<300000> bs;

  int n; cin >> n;
  RANGE(i, 1, n) {
    int k; cin >> k;
    bs[k] = 1;
  }

  RANGE(i, 1, n+1) {
    if(bs[i] == 0) {
      cout << i << endl;
      break;
    }
  }

  return 0;
}
