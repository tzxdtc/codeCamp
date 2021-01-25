class Solution {
    func mySqrt(_ x: Int) -> Int {
        var l = 0
        var r = x
        var mid = 0
        
        while l <= r {
            mid = (r - l) / 2 + l
            print(mid)
            if mid*mid <= x && x < (mid + 1)*(mid + 1) {
                return mid
            }
            else if x < mid*mid {
                r = mid - 1
            }else {
                l = mid + 1
            }
        }

        return mid
    }
}
