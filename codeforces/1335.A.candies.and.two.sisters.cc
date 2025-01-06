#include <iostream>

using namespace std;

int main() {
  int t; cin >> t;
  for(int i=0; i<t; i++) {
    long long n; cin >> n;

    long long ans = 0;
    if(n % 2 == 0) {
      ans = n / 2 - 1;
    } else {
      ans = n / 2;
    }
    cout << ans << endl;
  }
}
