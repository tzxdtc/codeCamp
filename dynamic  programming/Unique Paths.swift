class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var arraySteps = [Int](repeating: 1, count: n)
        var m = m
        if m == 1 || n == 1 {
            return 1
        }
        
        while m  > 1{
            for j in 1...(n-1) {
                arraySteps[j] += arraySteps[j - 1]
            }
            m -= 1
        }

        if let last = arraySteps.last {
            return last
        }
        return 0
    }
}