/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        var sum = targetSum
        
        guard let root = root else { return false }

        if root.val == targetSum && root.left == nil && root.right == nil {
            return true
        }

        sum -= root.val
                
        
        return self.hasPathSum(root.left, sum) || self.hasPathSum(root.right, sum)
    }
}