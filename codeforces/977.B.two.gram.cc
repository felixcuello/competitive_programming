#include <iostream>
#include <string>
#include <map>

using namespace std;

int main() {
  int n; cin >> n;
  string s; cin >> s;

  map<string, int> freq;

  for(int i=0; i<n-1; i++) {
    string candidate = string(1, s[i]);
    candidate += s[i+1];

    freq[candidate]++;
  }

  string ans;
  int max_freq = 0;

  for(auto it=freq.begin(); it!=freq.end(); it++) {
    if(it->second > max_freq) {
      max_freq = it->second;
      ans = it->first;
    }
  }

  cout << ans << '\n';

  return 0;
}
