class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        myList = []
        
        for num in nums:
            myList.append(num * num)
            
        return sorted(myList)