// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/ 

class Solution {
public:
    int maxProfit(vector<int>& prices) {
      int min = prices[0];
      int result = 0;
      int ps = prices.size();

      for(int i=0; i<ps; i++) {
        if(prices[i] < min)
          min = prices[i];
        if(prices[i] - min > result)
          result = prices[i] - min;
      }
      
      return result;
    }
};



