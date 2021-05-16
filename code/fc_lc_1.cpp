class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        map<int, int> m;
        int ns = nums.size();

        for(int i=0; i<ns; i++) {
            int o = target - nums[i];
            if(m.find(nums[i]) != m.end())
                return {m[nums[i]], i};
            else
                m[o] = i;
        }

        return {};
    }
}
