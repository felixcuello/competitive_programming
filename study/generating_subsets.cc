#include <bits/stdc++.h>

using namespace std;

void generate(string& s, string& subset, unsigned long i = 0) {
    if(i == s.length()) {
        cout << subset << endl;
    } else {
        subset.push_back(s[i]);
        generate(s, subset, i+1);
        subset.pop_back();
        generate(s, subset, i+1);
    }
}

int main() {
    string s = "felix";
    string subset = "";

    generate(s, subset = "");

    return 0;
}
