class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        
        dict = list()
        
        for single in s:
            dict.append(single)
            
        for tt in t:
            if tt not in dict:
                return False
            else:
                dict.remove(tt)
        if not dict:
            return True
        else:
            return False