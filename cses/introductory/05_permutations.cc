// https://cses.fi/problemset/task/1070
#include <bits/stdc++.h>

#define ll long long
#define ull unsigned long long

#define FEQ(a,b) (abs(a-b) < 1e-9)
#define RANGE(i,a,b) for(unsigned long i=a; i<b; i++)

using namespace std;

int main() {
  // freopen("input.txt", "r", stdin);
  // freopen("output.txt", "w", stdin);
  ios::sync_with_stdio(0);
  cin.tie(0);

  ll n; cin >> n;

  if(n > 1 && n < 4)
    cout << "NO SOLUTION";
  else {
    if(n%2) {
      for(ll i=1; i<=n; i+=2) {
        if(i != 1) cout << " ";
        cout << i;
      }

      if(n != 1)
        cout << " ";

      for(ll i=2; i<=n; i+=2) {
        if(i != 2) cout << " ";
        cout << i;
      }
    } else {
      for(ll i=2; i<=n; i+=2) {
        if(i != 2) cout << " ";
        cout << i;
      }
      cout << " ";
      for(ll i=1; i<=n; i+=2) {
        if(i != 1) cout << " ";
        cout << i;
      }
    }
  }

  return 0;
}
