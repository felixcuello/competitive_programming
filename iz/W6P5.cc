#include <bits/stdc++.h>

using namespace std;

bool solve(int a, int b) {
    unsigned long s = a+b;
    return (s%3 == 0) && (abs(a-b) <= s/3);
}

int main() {
    int t; cin >> t;
    while(t--) {
        int a; cin >> a;
        int b; cin >> b;
        cout << (solve(a,b) ? "YES" : "NO") << "\n";
    }

    return 0;
}
