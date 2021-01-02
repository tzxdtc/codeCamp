class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        maxProfit = 0
        minPrice = 100000
        
        for price in prices:
            maxProfit = max (price - minPrice, maxProfit)
            minPrice = min(price, minPrice)
        return maxProfit

                

        
        