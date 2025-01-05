#include <iostream>
#include <vector>

#define PV(v) for(auto e : v) { cout << e << endl; }

using namespace std;

int main() {
  int n;
  cin >> n;
  vector<int> numbers(n + 1, 0);
  for(int i=0; i<n; i++) {
    int temp;
    cin >> temp;
    numbers[temp] = 1;
  }

  for(int i=1; i<=n; i++) {
    if(numbers[i] == 0) {
      cout << i;
      return 0;
    }
  }
  return 0;
}
