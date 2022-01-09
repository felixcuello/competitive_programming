// https://cses.fi/problemset/task/1069
#include <bits/stdc++.h>

#define FEQ(a,b) (abs(a-b) < 1e-9)
#define RANGE(i,a,b) for(unsigned long i=a; i<b; i++)

using namespace std;

int main() {
  // freopen("input.txt", "r", stdin);
  // freopen("output.txt", "w", stdin);
  ios::sync_with_stdio(0);
  cin.tie(0);

  string s; cin >> s;
  char last = s[0];
  int max = 1;
  int current = 1;

  RANGE(i, 1, s.length()) {
    if(s[i] == last) {
      current++;
      if(current > max)
        max = current;
    }
    else {
      last = s[i];
      current = 1;
    }
  }

  cout << max << endl;

  return 0;
}
