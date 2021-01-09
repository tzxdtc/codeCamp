class Solution:
    def largestSumAfterKNegations(self, A: List[int], K: int) -> int:
        A = sorted(A)
        
        if A[0] > 0 and K % 2 != 0:
            A[0] = -A[0]
            return sum(A)
        
        for i, num in enumerate(A):
            if i + 1 <= K and num < 0:
                A[i] = -A[i]
            elif num == 0:
                break
            elif i + 1 <= K and num > 0:
                if num > A[i -1] and (K - i) % 2 == 0:
                    break
                elif num > A[i -1] and (K - i) % 2 == 1:
                    A[i - 1] = -A[i - 1]
                    break
                elif num <= A[i -1] and (K - i) % 2 == 1:
                    A[i] = -A[i]
                    break
                else:
                    break
        return sum(A)