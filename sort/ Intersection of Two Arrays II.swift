class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var answer = [Int]()
        var nums2Copy: [Int] = nums2
        for num in nums1 {
            if nums2Copy.contains(num) {
                answer.append(num)
                nums2Copy.remove(at: nums2Copy.firstIndex(of: num)!)
            }
        }
        
        return answer
    }
}