#include <iostream>
#include <string>
#include <map>

#define MIN(a,b) (a < b ? a : b)
#define MAX(a,b) (a > b ? a : b)

using namespace std;

int main() {
  int t; cin >> t;
  while(t--) {
    map<char, int> freq;

    int n,k; cin >> n >> k;
    string s; cin >> s;

    for(int i=0; i<n; i++) freq[s[i]]++; // count the frequencies
    
    // go for all the letters
    int result = 0;
    for(int c=65; c<91; c++) {
      int up = freq[c];
      int low = freq[c+32];

      int min = MIN(up, low);
      int max = MAX(up, low);

      if(k > 0) {
        int d = (max - min) / 2;
        if((k-d) > 0) {
          result += k-d;
        } else {
          result += k;
        }
      }

      result += low;
    }

    cout << result << endl;
  }
}

// aAaaBACacbE
