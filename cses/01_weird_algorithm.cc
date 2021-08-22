#include <bits/stdc++.h>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);

    int n; cin >> n;

    unsigned long long x = n;

    cout << x;

    while(x > 1) {
        cout << " ";

        if(x % 2 == 0)
            x /= 2;
        else
            x = 3*x+1;

        cout << x;
    }

    cout << endl;
    return 0;
}
