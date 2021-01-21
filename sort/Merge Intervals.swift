class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var answer: [[Int]] = []
        let intervalsSorted = intervals.sorted (by: {$0[0] < $1[0]})
        for interval in intervalsSorted {
            if answer.isEmpty {
                answer.append(interval)
            } else {
                guard let last = answer.last else {return []}
                if last[1] >= interval[0] && last[1] <= interval[1]{
                    answer.removeLast()
                    answer.append([last[0], interval[1]])
                } else if last[1] > interval[0] && last[1] > interval[0]{
                  continue
                } else {
                    answer.append(interval)
                }
            }
        }
        
        return answer
    }
}