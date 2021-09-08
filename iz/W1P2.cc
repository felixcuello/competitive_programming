#include <bits/stdc++.h>

using namespace std;

int main() {
   unsigned long long cc;
   cin >> cc;
   cout << cc;
   while(cc != 1) {
     if(cc % 2 == 0)
       cc /= 2;
     else
       cc = (3*cc) + 1;
     cout << ' ' << cc;
   }
}
