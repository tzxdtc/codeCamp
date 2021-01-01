class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        dict = set()
        
        for num in nums:
            if num not in dict:
                dict.add(num)
            else:
                return True
        return False