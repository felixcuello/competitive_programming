# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  i = 0
  min = prices[0]
  profit = 0
  prices << 0 # dummy element to make the algorithm to work
  while i < prices.count - 1
    min = prices[i] if prices[i] < min
    
    if prices[i] > prices[i+1]
      profit += prices[i] - min
      min = prices[i+1]
      i += 1
    end
    
    i += 1
  end
  
  profit
end
