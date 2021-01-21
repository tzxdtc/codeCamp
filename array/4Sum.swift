class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        guard nums.count >= 3 else { return [[Int]]() }
        let sorted = nums.sorted()
        var result = [[Int]]()
        for i in 0..<sorted.count {
            // Don't allow `i` to point to same element
            if i != 0, sorted[i] == sorted[i-1] { continue }
            var j = i + 1

            var k = sorted.count-1
            while j < k - 1  {
                var l = j + 1
                while l < k {
                    let sum = sorted[i] + sorted[j] + sorted[k] + sorted[l]
                    if sum == target {
                        result.append([sorted[i], sorted[j],sorted[l], sorted[k]])
                        l += 1
                        // Don't allow `l` to point to same element
                        while l < k, sorted[l] == sorted[l-1] {
                            l += 1
                        }
                    } else if sum < target {
                        l += 1
                    } else {
                        k -= 1
                    }
                }

                j += 1
                k = sorted.count-1
                while j < k - 1, sorted[j] == sorted[j - 1] {
                    j += 1
                }
            }
        }
        return result
    }
}