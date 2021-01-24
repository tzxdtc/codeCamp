class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        let gasCopy = gas + gas
        let costCopy = cost + cost
        var left = 0
        for index in 0...(gas.count - 1) {
            if gas[index] >= cost[index] {
                left = gas[index]
                for i in index...(index + gas.count) {

                    if i - index == gas.count {
                        return index
                    }

                    if left - costCopy[i] < 0 {
                        break
                    }

                    left = left - costCopy[i] + gasCopy[i + 1]
                }
            }
        }

        return -1
    }
}