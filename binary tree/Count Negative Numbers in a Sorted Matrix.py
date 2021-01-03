class Solution:
    def bs(self, row):
        low = 0
        high = len(row)-1
        while low<=high:
            mid = int(low+(high-low)/2)
            if row[mid]<0:
                high=mid-1
            else:
                low=mid+1
        return len(row[low:])
    
    def countNegatives(self, grid: List[List[int]]) -> int:
        res = []
        for row in grid:
            res.append(self.bs(row))
        return sum(res)