class Solution {
public:
    void moveZeroes(vector<int>& v) {
      int z = 0;
      int n = 0;
      int s = v.size();

      while(n < s && z < s) {
        if(v[z] == 0 && v[n] == 0) {
          n++;
          continue;
        }

        if(v[n] != 0 && v[z] == 0) {
          swap(v[z], v[n]);
          z++;
          continue;
        }

        if(v[n] != 0 && v[z] != 0) {
          n++;
          z++;
          continue;
        }

        if(v[n] == 0 && v[z] != 0); // ERROR?
      }
    }
};
