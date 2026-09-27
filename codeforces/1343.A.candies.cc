#include <iostream>
#include <cmath>

using namespace std;

int main() {
  int t; cin >> t;
  for(int i=0; i<t; i++) {
    int n; cin >> n;
    int k=2;
    while(k < n) {
      int d = pow(2,k) - 1;
      if(n % d == 0) {
        cout << (n / d) << '\n';
        break;
      }
      k++;
    }
  }
  return 0;
}
