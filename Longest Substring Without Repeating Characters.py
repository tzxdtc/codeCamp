class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        substring = {}
        start = -1
        max = 0
        
        for i in range(len(s)):
            if s[i] in substring  and substring[s[i]] > start:
                start = substring[s[i]]
                substring[s[i]] = i
            else:
                substring[s[i]] = i
                if i - start > max:
                    max = i - start
        return max
            
        