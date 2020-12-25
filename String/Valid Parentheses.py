class Solution:
    def isValid(self, s: str) -> bool:
        if len(s) % 2 == 1:
            return False
        
        pairs = {
            "}": "{",
            "]": "[",
            ")": "(",
        }
        
        stack = list()
        
        for i in s:
            if i not in pairs:
                stack.append(i)
            else:
                 if not stack or stack[-1] != pairs[i]:
                    return False
                 stack.pop()
        return not stack