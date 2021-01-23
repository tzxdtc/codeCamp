class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count < 2 {
            return nums[0]
        }

        var max_ending_here = nums[0]
        var max_so_far = nums[0]
        for i in 1...(nums.count - 1){
            max_ending_here = max ( nums[i], max_ending_here + nums[i]);
            max_so_far = max ( max_so_far, max_ending_here);
        }

        return max_so_far
    }
}