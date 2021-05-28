#include <iostream>
#include <vector>

using namespace std;

#include <iostream>
#include <vector>
#include <climits>

using namespace std;

// https://leetcode.com/problems/maximum-subarray/
class Solution {
    public:
        int maxSubArray(vector<int>& nums) {
            return dac(nums, 0, nums.size()-1);
        }

        int dac(vector<int>& nums, int a, int b) {
            int x = (b - a) % 2 == 1;
            int m = ((b - a) / 2) + a;

            //cout << "a=" << a << " b=" << b << " m=" << m << " x=" << x << endl;

            if(a == b) return nums[a];

            int left = dac(nums, a, m);
            int right = dac(nums, m+x, b);
            int center = cen(nums, m, m+x, a, b);

            vector<int> v = {left, center, right};
            return *max_element(v.begin(), v.end());
        }

        int cen(vector<int> nums, int i, int j, int a, int b) {
            //cout << "i=" << i << " j=" << j << " a=" << a << " b=" << b << endl;
            int duplicate = (i==j) ? nums[i] : 0;
            int left = 0;
            int right = 0;
            int max_left = INT_MIN;
            int max_right = INT_MIN;

            while(i>=a) {
                left += nums[i];
                if(left > max_left)
                    max_left = left;
                i--;
            }

            while(j<=b) {
                right += nums[j];
                if(right > max_right)
                    max_right = right;
                j++;
            }

            //cout << "max_left=" << max_left << endl;
            //cout << "max_right=" << max_right << endl;
            //cout << "duplicate=" << duplicate << endl;

            return max_left + max_right - duplicate;
        }
};

int main() {
    Solution *s = new Solution();
    vector<int> a = {1,2,3,4,5};
    //vector<int> a = {3,-1,5,-1,6};
    //vector<int> a = {-2,1,-3,4,-1,2,1,-5,4};
    //vector<int> a = {31,-41,59,26,-53,58,97,-93,-23,84};
    //vector<int> a = {-2,-2,-3,1,-3,0,-3};
    //vector<int> a = {0,-3,1,1};
    //vector<int> a = {-2,-1};
    //vector<int> a = {5,4,-1,7,8};
    //vector<int> a = {2,-2,-2,0,-2,2,2};
    //vector<int> a = {1,-1,5,-10};
    //vector<int> a = {2,1,-1,5,-10};
    cout << s->maxSubArray(a) << endl;
    return 0;
}
