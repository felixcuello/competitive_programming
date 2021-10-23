#include <bits/stdc++.h>

using namespace std;

#define SIZE 60000000LL

int main() {
    bitset<SIZE+1> sieve;
    sieve[0] = 1;
    sieve[1] = 1;
    for(int i=2; i*i<=SIZE; i+=1) {
        if(sieve[i] == 1) continue;

        for(int j=i+i; j<=SIZE; j+=i)
            sieve[j] = 1;
    }

    for(int i=2; i<=SIZE; i++)
        if(sieve[i] == 0)
            cout << "prime: " << i << endl;
    return 0;
}
