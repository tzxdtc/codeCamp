class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let array = Array(s)
        var l = 0
        var r = s.count - 1

        while l < r {
            while !alphanumeric(String(array[l])) {
                if l == r {
                    return true
                }
                l += 1
            }

            while !alphanumeric(String(array[r])) {
                if l == r {
                    return true
                }
                r -= 1
            }

            if String(array[l]).lowercased() != String(array[r]).lowercased() {
                return false
            }

            l += 1
            r -= 1
        }

        return true
    }
    
    func alphanumeric(_ s: String) -> Bool {
        return !s.isEmpty && s.range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
}