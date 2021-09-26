#include <bits/stdc++.h>

using namespace std;

int main() {
    int n;
    cin >> n;
    unsigned long long res = 1;
    for(int i=1; i<=n; i++)
        res = ((res % (1000000007)) * 2) % 1000000007;
    cout  << res << "\n";
    return 0;
}
