// https://leetcode.com/problems/count-and-say/
class Solution {
public:
  string countAndSay(int n) {
    if(n == 1) return "1";

    string _n = countAndSay(n-1);

    string result = "";

    char last_char = _n[0];
    int count = 0;
    int _nl = _n.length();

    for(int i=1; i<_nl; i++)
      if(_n[i] == last_char) {
        count++;
      } else {
        result += to_string(count+1);
        result += last_char;
        last_char = _n[i];
        count = 0;
      }

    if(_n[_nl-1] == last_char) {
      result += to_string(count+1);
      result += last_char;
    }

    return result;
  }
};
