class Solution:
    def balancedStringSplit(self, s: str) -> int:
        count = 0
        check = 0
        for char in s:
            if char == "R":
                check += 1
            elif char == "L":
                check -= 1
            if check == 0:
                count += 1
        return count