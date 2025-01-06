#include <iostream>

using namespace std;

int main() {
  int n; cin >> n;
  for(int i = 0; i < n; i++) {
    int h; cin >> h;
    int m; cin >> m;

    if(m == 0) {
      h--;
    } else {
      m = 60 - m;
    }

    h = (23 - h) * 60;

    int ans = h + m;

    cout << ans << '\n';
  }
  return 0;
}
