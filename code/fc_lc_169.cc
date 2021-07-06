class Solution {
public:
    int majorityElement(vector<int>& nums) {
      sort(nums.begin(), nums.end());

      int curr_count = 0;
      long long curr_number = LLONG_MIN;

      int max_count = 0;
      long long max_number = LLONG_MIN;

      int nums_s = nums.size();
      for(int i=0; i<nums_s; i++) {
        if(nums[i] != curr_number) {
          curr_count = 0;
          curr_number = nums[i];
        }

        curr_count++;

        if(curr_count > max_count) {
          max_count = curr_count;
          max_number = curr_number;
        }
      }

      return max_number;
    }
};
