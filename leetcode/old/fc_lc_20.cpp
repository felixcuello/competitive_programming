// https://leetcode.com/problems/valid-parentheses/
class Solution {
public:
  bool isValid(string s) {
    int sl = s.length();
    vector<char> stack;

    for(int i=0; i<sl; i++) {
      if(s[i] == '(' || s[i] == '[' || s[i] == '{')
        stack.push_back(s[i]);
      else {
        if(stack.size() <= 0) {
          cout << "1" << endl;
          return false;
        } else {
          if(s[i] == ')' && stack.back() != '(') return false;
          else if(s[i] == ']' && stack.back() != '[') return false;
          else if(s[i] == '}' && stack.back() != '{') return false;
          else stack.pop_back();
        }
      }
    }

    return stack.size() <= 0;
  }
};
