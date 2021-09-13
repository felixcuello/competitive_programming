class Solution {
public:
    int maxProfit(vector<int>& prices) {
        long long max = 0;
        long long min = prices[0];
        int ps = prices.size();
        
        for(int i=1; i<ps; i++) {
            if((prices[i] - min) > max) max = prices[i] - min;
            if(prices[i] < min) min = prices[i];
        }
        
        return max;
    }
};
