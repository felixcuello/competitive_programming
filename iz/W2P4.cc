class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        map<int, int> pos;
        pos[target - nums[0]] = 0;
        for(int i=1; i<nums.size(); i++)
            if(pos.find(nums[i]) != pos.end())
                return {pos[nums[i]], i};
            else
                pos[target - nums[i]] = i;
        return {};
    }
};
