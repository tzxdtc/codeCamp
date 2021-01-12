class Solution:
    def numberOfMatches(self, n: int) -> int:
        if n == 1:
            return 0
        
        matches = 0
        while n != 0:
            matches += n // 2
            if n == 2:
                break
            if n % 2 == 0:
                n = n // 2 
            else:
                n = n // 2 + 1
        return matches
    