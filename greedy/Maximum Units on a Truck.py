class Solution:
    def maximumUnits(self, boxTypes: List[List[int]], truckSize: int) -> int:
        boxTypes = sorted(boxTypes, key = lambda x: x[1], reverse = True)
        
        n = len(boxTypes)
        res = 0      
        
        for i in range(n):
            res = res + max(0, min(boxTypes[i][0], truckSize)) * boxTypes[i][1]
            truckSize = truckSize - boxTypes[i][0]
        
        return res
