# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

### 这道题主要用到的是递归和dfs(https://en.wikipedia.org/wiki/Depth-first_search)
### 另外，自己没有考虑到leftDepth == -1 or rightDepth == -1的条件情况
class Solution:
    def isBalanced(self, root: TreeNode) -> bool:
        return self.getDepth(root) != -1

        
    def getDepth(self, root: TreeNode):
        if root is None:
            return 0

        leftDepth = self.getDepth(root.left)
        rightDepth = self.getDepth(root.right)

        if abs(leftDepth - rightDepth) > 1 or leftDepth == -1 or rightDepth == -1:
            return -1
        return max(leftDepth,rightDepth) + 1