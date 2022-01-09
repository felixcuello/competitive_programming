class Solution {
public:
  vector<int> findDisappearedNumbers(vector<int>& nums) {
    vector<int> result;
    int numss = nums.size();
    
    for(int i=0; i<numss; i++)
      if(nums[abs(nums[i])-1] > 0)
        nums[abs(nums[i])-1] *= -1;
    
    for(int i=0; i<numss; i++)
      if(nums[i] > 0)
        result.push_back(i+1);
    
    return result;
  }
};
