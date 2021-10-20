#include <bits/stdc++.h>

using namespace std;

int main() {
  string s; cin >> s;
  vector<int> all(255);
  set<char> odd;
  vector<char> odds;

  ////////////////////////////////////////////////////////////////////
  // calculate
  ////////////////////////////////////////////////////////////////////
  for(int i=0; i<s.length(); i++)
    all[s[i]]++;

  for(int i=0; i<s.length(); i++) {
    if(all[s[i]] % 2 == 1) {
      odd.insert(s[i]);
      odds.push_back(s[i]);
    }
  }

  if(odd.size() > 1) {
    cout << "NO SOLUTION" << endl;
    return 0;
  }

  ////////////////////////////////////////////////////////////////////
  // print
  ////////////////////////////////////////////////////////////////////
  for(int i=0; i<all.size(); i++)
    if(all[i] % 2 == 0)
      for(int j=0; j<all[i]/2; j++)
        cout << char(i);

  for (auto i = odds.begin(); i != odds.end(); i++)
    cout << *i;

  for(int i=all.size()-1; i>=0; i--)
    if(all[i] % 2 == 0)
      for(int j=0; j<all[i]/2; j++)
        cout << char(i);

  return 0;
}

