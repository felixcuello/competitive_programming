#include <string>
#include <iostream>

using namespace std;

int main() {
  string s;
  cin >> s;

  int n = s.length();
  int result = 1;
  int count = 1;
  char last = s[0];

  for(int i = 1; i < n; i++) {
    if(s[i] == last) {
      count++;
      if(count > result) result = count;
    } else {
      count = 1;
    }
    last = s[i];
  }
  cout << result;
}
