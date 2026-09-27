#include <iostream>

using namespace std;

int main() {
  int n; cin >> n;
  if(n < 4) {
    cout << "NO" << endl;
    return 0;
  }
  cout << ((n % 2 == 0) ? "YES" : "NO") << endl;
}
