#include <iostream>

using namespace std;

int main() {
  int n,m; cin >> n >> m;
  int seg[200];
  for(int i=0; i<200; i++) seg[i] = 0;

  for(int i=0; i<n; i++) {
    int l,r; cin >> l >> r;
    for(int k=l; k<=r; k++) {
      seg[k] = 1;
    }
  }

  int count = 0;
  for(int i=1; i<=m; i++)
    if(seg[i] == 0) count++;

  cout << count << '\n';

  bool space = false;
  for(int i=1; i<=m; i++) {
    if(seg[i] == 0) {
      if(space) cout << ' ';
      space = true;
      cout << i;
    }
  }
  cout << '\n';
  return 0;
}
