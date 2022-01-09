class Solution {
public:
  vector<vector<int>> threeSum(vector<int>& nums) {
    vector<vector<int>> result;
    sort(nums.begin(), nums.end());
    
    int nums_s = nums.size();
    
    for(int i=0; i<nums_s; i++) {
      while(i>0 && i<nums_s && nums[i] == nums[i-1]) i++;

      int l = i+1;          // left
      int r = nums_s - 1;   //right
      
      while(l < r) {
        int sum = nums[i] + nums[l] + nums[r];
        
        if(sum > 0) { // muy grande
          r--;
        } else if(sum < 0) { // muy chico
          l++;
        } else { // lo encontré
          result.push_back({nums[i], nums[l], nums[r]});
          l++;
          r--;
          while(l < r && nums[l] == nums[l-1]) l++;
          while(l < r && nums[r] == nums[r+1]) r--;
        }
      }
    }
    
    return result;
  }
};
