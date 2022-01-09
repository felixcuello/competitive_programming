class Solution {
public:
    int singleNumber(vector<int>& nums) {
      int result = 0;
      int nums_s = nums.size();
      for(int i=0; i<nums_s; i++)
        result ^= nums[i];

      return result;
    }
};
