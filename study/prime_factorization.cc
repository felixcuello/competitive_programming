#include <bits/stdc++.h>

using namespace std;

#define MAX_ELEM 100000

int main() {
    unsigned long long prime[MAX_ELEM];
    unsigned long long power[MAX_ELEM];

    int elem = 0;
    int i = 2;

    unsigned long long n; cin >> n;

    while(n > 1) {
        if(n % i == 0) {
            prime[elem] = i;
            int t_power = 0;
            while(n % i == 0) {
                n /= i;
                t_power++;
            }
            power[elem] = t_power;
            elem++;
        }
        i++;
    }

    cout << "Factorization" << endl;
    for(int i=0; i<elem; i++) {
        cout << prime[i] << " " << power[i] << endl;
    }
    return 0;
}
