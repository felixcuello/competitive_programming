#include <bits/stdc++.h>

using namespace std;

#define N 11

vector<bool> col(N);
vector<bool> diag1(N*2);
vector<bool> diag2(N*2);

long long generate(int row = 0) {
    int ways = 0;
    if(row == N) {
        return 1LL;
    } else {
        for(int c=0; c<N; c++) {
            if(col[c] == 1 || diag1[row+c] == 1 || diag2[c-row+N-1] == 1)
                continue; // impossible column or diagonal
            col[c] = diag1[row+c] = diag2[c-row+N-1] = 1;
            ways += generate(row+1);
            col[c] = diag1[row+c] = diag2[c-row+N-1] = 0;
        }
    }
    return ways;
}

int main() {
    cout << "Formas: " << generate() << endl;
    return 0;
}
