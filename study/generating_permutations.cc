#include <bits/stdc++.h>

/*

GCP - Page 17

This is a modified version of the code, because I wanted to:

1. Use string instead of numbers
2. Use no extra "chosen" array for the bitset of chosen. I replaced that
   by actually changing the string.

PROS
1. It's a little bit more performant on memory

CONS

1. It's slower (because the PERM isn't a reference)

*/

using namespace std;

void generate(string &s, string perm = "") {
    int ss = s.size();
    if(ss == perm.size()) {
        cout << perm << endl;
    } else {
        for(int i=0; i<ss; i++) {
            if(s[i] == '.') continue;
            char x = s[i];
            s[i] = '.';
            perm.push_back(x);
            generate(s, perm);
            perm.pop_back();
            s[i] = x;
        }
    }
}

int main() {
    string elements = "felix";
    generate(elements);
    return 0;
}
