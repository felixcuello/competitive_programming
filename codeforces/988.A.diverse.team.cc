#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main() {
  int n; cin >> n;
  int k; cin >> k;

  set<int> s;
  vector<int> ans;

  for(int i=0; i<n; i++) {
    int t; cin >> t;
    if(s.find(t) == s.end()) {
      s.insert(t);
      ans.push_back(i+1);
    }
    if(ans.size() >= k) break;
  }

  if(ans.size() >= k) {
    cout <<  "YES" << '\n';
    for(int i=0; i<ans.size(); i++) {
      if(i > 0) cout << ' ';
      cout << ans[i];
    }
  } else {
    cout << "NO";
  }
  cout << '\n';
}
