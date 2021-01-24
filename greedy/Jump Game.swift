class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var furtherest = 0
        
        if nums.count == 1 {
            return true
        }
        
        for index in 0...(nums.count - 2) {
            if index <=  furtherest {
                furtherest = max(nums[index] + index, furtherest)
            }

            if furtherest >= nums.count - 1 {
                return true
            }
        }

        return false
    }
}