#include <bits/stdc++.h>

using namespace std;

int main() {
    long long n;
    cin >> n;

    long long sum = (n*(n+1))/2;
    if(sum % 2 == 1) {
        cout << "NO\n";
        return 0;
    }

    vector<int> a,b;
    sum /= 2;
    for(int i=n; i>=1; i--)
        if(sum - i >= 0) {
            a.push_back(i);
            sum -= i;
        }
        else
            b.push_back(i);

    cout << "YES\n";
    cout << a.size() << "\n";
    for(int i=a.size()-1; i>=0; i--)
        if(i == a.size()-1)
            cout << a[i];
        else
            cout << " " << a[i];
    cout << "\n";

    cout << b.size() << "\n";
    for(int i=b.size()-1; i>=0; i--)
        if(i == b.size()-1)
            cout << b[i];
        else
            cout << " " << b[i];
    cout << "\n";

    return 0;
}
