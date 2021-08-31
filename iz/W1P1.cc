#include <iostream>

using namespace std;

int main() {
    unsigned long long n; cin >> n;
    unsigned long long result = (n*(n+1))/2;
    n -= 1;
    while(n--) {
        unsigned long long t; cin >> t;
        result -= t;
    }
    cout << result << endl;
    return 0;
}
