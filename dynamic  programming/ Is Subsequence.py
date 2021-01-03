class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        sLength = len(s)
        tLength = len(t)
        
        i = j = 0
        
        while i < sLength and j < tLength:
            if s[i] == t[j]:
                i += 1
            j += 1
        
        return i == sLength
            