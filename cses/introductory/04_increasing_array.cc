// https://cses.fi/problemset/task/1094
#include <bits/stdc++.h>

#define ll long long
#define ull unsigned long long

#define FEQ(a,b) (abs(a-b) < 1e-9)
#define RANGE(i,a,b) for(ull i=a; i<b; i++)

using namespace std;

int main() {
  // freopen("input.txt", "r", stdin);
  // freopen("output.txt", "w", stdin);
  ios::sync_with_stdio(0);
  cin.tie(0);

  ull n; cin >> n;
  ull last; cin >> last;
  ull result = 0;
  RANGE(i, 0, n-1) {
      ull t; cin >> t;
      result += (last > t) ? (last - t) : 0;
      last = (last > t) ? last : t;
  }

  cout << result;

  return 0;
}
