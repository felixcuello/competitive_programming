class Solution {
public:
    string convert(string s, int numRows) {
      if(numRows == 1)
        return s;

      int sl = s.length();
      vector<string> coso(numRows);
      string result;
      
      int j = 0;
      int v = 1;
      for(int i=0; i<sl; i++) {
        coso[j].push_back(s[i]);
        j += v;
        if(j == numRows-1)
          v = -1;
        else if(j == 0)
          v = 1;
      }
      
      for(int i=0; i<numRows; i++) {
        int rl = coso[i].length();
        for(int j=0; j<rl; j++)
          result.push_back(coso[i][j]);
      }
      
      return result;
    }
};
