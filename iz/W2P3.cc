#include <iostream>
#include <string>

using namespace std;

int main() {
    string s; cin >> s;

    int result = 1;
    char last = s[0];
    int max = 1;
    for(int i=1; i<s.length(); i++) {
        if(s[i] == last)
            result++;
        else {
            result = 1;
            last = s[i];
        }
        if(result > max)
            max = result;
    }

    cout << max;
    return 0;
}
