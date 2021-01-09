class Solution:
    def minCostToMoveChips(self, position: List[int]) -> int:
        even_cnt = 0
        odd_cnt = 0
        
        for i in position:
            if i % 2 == 0:
                odd_cnt += 1
            else:
                even_cnt += 1
        
        return min(odd_cnt, even_cnt)