#include <set>
using namespace std;

vector<int> twoNumberSum(vector<int> nums, int target) {
	set<int> s;
	int ns = nums.size();

	for(int i=0; i<ns; i++) {
		int o = target - nums[i];
		if(s.find(o) != s.end())
			return {o, nums[i]};
		else
			s.insert(nums[i]);
	}
	return {};
}
