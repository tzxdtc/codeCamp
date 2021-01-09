class Solution:
    def minSubsequence(self, nums: List[int]) -> List[int]:
        sorted_nums = sorted(nums)
        subsequence = []

        while sum(subsequence) <= sum(sorted_nums):
            subsequence.append(max(sorted_nums))
            sorted_nums.remove(max(sorted_nums))
        
        return subsequence