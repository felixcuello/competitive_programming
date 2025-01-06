#include <iostream>

using namespace std;

int main() {
  int n; cin >> n;
  int k; cin >> k;

  while(k > 0) {
    int m = n % 10;
    if(m == 0) {
      n /= 10;
      k--;
    } else {
      int subs = (k >= m) ? m : k;
      k -= subs;
      n -= subs;
    }
  }

  cout << n << '\n';
}
