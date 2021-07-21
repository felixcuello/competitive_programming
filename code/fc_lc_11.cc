// https://leetcode.com/problems/container-with-most-water/
class Solution {
public:
    int maxArea(vector<int>& height) {
      int hs = height.size();
      vector<pair<int,int>> mem;
      for(int i=0; i<hs; i++)
        mem.push_back({i, height[i]});
      
      int max_area = 0;
      int i = 0;
      int j = mem.size()-1;
      while(i<j) {
        int area = (mem[j].first - mem[i].first)
                      * min(mem[j].second, mem[i].second);
        if(area > max_area)
          max_area = area;

        if(mem[i].second < mem[j].second)
          i++;
        else
          j--;
      }
      
      return max_area;
    }
}; 
