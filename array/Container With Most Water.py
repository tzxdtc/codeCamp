class Solution:
    def maxArea(self, height: List[int]) -> int:
        left = 0
        right = len(height) - 1
        result = 0
        maxArea = 0
        
        while left < right:
            maxArea = min(height[left],height[right]) * (right - left)
            
            if maxArea > result:
                result = maxArea
            if height[left] > height[right]:
                right -= 1
            else:
                left += 1
        
        return result