#include <bits/stdc++.h>

using namespace std;

int main() {
    int n; cin >> n;

    if(n==2 || n == 3) {
      cout << "NO SOLUTION";
      return 0;
    }

    for(int i=n-1; i>=1; i-=2) {
      if(i != n-1) cout << ' ';
      cout << i;
    }

    cout << ' ';
    
    for(int i=n; i>=1; i-=2) {
      if(i != n) cout << ' ';
      cout << i;
    }

    cout << endl;
    return 0;
}
