#include <iostream>

using namespace std;

int main() {
    int n; cin >> n;
    unsigned long long curr;

    cin >> curr;

    unsigned long long int result = 0;
    for(int i=1; i<n; i++) {
        unsigned long long t; cin >> t;
        if(t < curr)
            result += curr - t;
        curr = max(curr, t);
    }

    cout << result << endl;
    return 0;
}
