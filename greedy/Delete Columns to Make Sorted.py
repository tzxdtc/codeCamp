class Solution:
    def minDeletionSize(self, A: List[str]) -> int:
        ans = 0
        
        for i in range(len(A[0])):
            myList = []
            for j in range(len(A)):
                myList.append(A[j][i])
            if myList != sorted(myList):
                ans += 1
        
        return ans