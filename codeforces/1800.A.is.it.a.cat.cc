#include <iostream>
#include <string>

using namespace std;

int main() {
  int t; cin >> t;

  string meow = "MEOW";

  while(t--) {
    int n; cin >> n;
    string s; cin >> s;

    for(int i=0; i<n; i++) // convert to lowercase
      if(s[i] > 90) s[i] -= 32;

    char last = s[0];
    string uniq = "";

    uniq += last;

    for(int i=1; i<n; i++) // remove duplicates
      if(last != s[i]) {
        uniq += s[i];
        last = s[i];
      }

    cout << ((uniq == meow) ? "YES" : "NO") << '\n';
  }
}

/*
 * ammmmeeeeoooowwww
 * i
 *
 * meow
 * j
 *
 */
