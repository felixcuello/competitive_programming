#include <iostream>
#include <string>
#include <set>

using namespace std;

int main() {
  int t; cin >> t;
  while(t--) {
    int n; cin >> n;
    string s; cin >> s;

    set<string> ss;
    for(int i=0; i<n-1; i++) {
      string temp = "";
      for(int j=0; j<n; j++) {
        if(j == i || j == i + 1) continue; // skip the current pair
        temp.push_back(s[j]);
      }
      ss.insert(temp);
    }
    cout << ss.size() << '\n';
  }
  return 0;
}
