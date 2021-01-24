class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        
        if strs.count == 1 {
            return strs[0]
        }
        
        var prefix = strs[0]
        for index in 1...(strs.count - 1){
            prefix = commonPrefix(prefix, strs[index])
            if prefix == "" {
                return ""
            }

        }

        return prefix
    }
    
    func commonPrefix(_ str1: String, _ str2: String) -> String {
        let minCount = min(str1.count, str2.count)
        var result = ""
        
        if minCount == 0 {
            return ""
        }
        
        for index in 0...(minCount - 1) {
            if String(str1[str1.index(str1.startIndex, offsetBy: index)]) == String(str2[str2.index(str2.startIndex, offsetBy: index)]) {
                result += String(str1[str1.index(str1.startIndex, offsetBy: index)])
            } else {
                break
            }
        }

        return result
    }
}