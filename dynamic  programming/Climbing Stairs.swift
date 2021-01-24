class Solution {
    func climbStairs(_ n: Int) -> Int {
        var stepArray = [0, 1, 2]
        if n < 3 { return stepArray[n] }
        
        for index in 3...n {
            stepArray.append(stepArray[index - 1] + stepArray[index - 2])
        }

        return stepArray[n]
    }
}