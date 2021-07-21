class Solution {
public:
  bool ispa(int x, int lx, int i) {
    if(i > lx) return true;

    int left = (x / (int)pow(10, lx)) % 10;
    int right = (x / (int)pow(10, i)) % 10;
    
    if(left != right) return false;
    
    return ispa(x, lx-1, i+1);
  }
  
  bool isPalindrome(int x) {
    if(x < 0) return false;
    if(x < 10) return true;

    return ispa(x, log10(x), 0);
  }
};
