class Solution {
public:
    void sortColors(vector<int>& nums) {
      vector<int> temp = {0,0,0};
      int ns = nums.size();

      for(int i=0; i<ns; i++)
        temp[nums[i]]++;
      for(int i=0; i<temp[0]; i++)
        nums[i] = 0;
      for(int i=temp[0]; i<temp[0] + temp[1]; i++)
        nums[i] = 1;
      for(int i=temp[0]+temp[1]; i<ns; i++)
        nums[i] = 2;

      return;
    }
};
