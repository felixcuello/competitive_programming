// https://leetcode.com/problems/maximum-subarray/
class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        int ns = nums.size();
        int current = nums[0];
        int max = nums[0];

        for(int i=1; i<ns; i++) {
            if(current + nums[i] > nums[i])
                current += nums[i];
            else
                current = nums[i];

            if(current > max)
                max = current;
        }

        return max;
    }
};
