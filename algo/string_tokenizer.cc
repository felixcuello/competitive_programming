#include <iostream>
#include <string>
#include <vector>

using namespace std;

vector<string> tokenize(string&s, char tok) {
  vector<string> ans;
  string temp = "";

  for(auto c : s) {
    if(c != tok) {
      temp += c;
    } else {
      ans.push_back(temp);
      temp = "";
    }
  }

  ans.push_back(temp);
  return ans;
}

int main() {
  vector<string> v;
  string sentence = "this is just a sentence that has to be tokenized";
  vector<string> tok = tokenize(sentence, ' ');
  for(auto s : tok)
    cout << s << '\n';
  return 0;
}
