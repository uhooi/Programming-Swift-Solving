// 動的計画法 2-6
// https://algo-method.com/tasks/334

let N = Int(readLine()!)!
precondition(2 <= N && N <= 100)

let aaa: [[Int]] = (1...N).map { _ in readLine()!.split(separator: " ").map { Int($0)! } }
precondition(aaa.count == N)
precondition(aaa.allSatisfy { aa in aa.count == N })
precondition(aaa.allSatisfy { aa in aa.allSatisfy { 1 <= $0 && $0 <= 100 } })

var dp = aaa
for row in 0..<N {
    for column in 0..<N {
        let upSquare = (row - 1 < 0) ? 0 : dp[row - 1][column]
        let leftSquare = (column - 1 < 0) ? 0 : dp[row][column - 1]
        dp[row][column] += upSquare >= leftSquare ? upSquare : leftSquare
    }
}
print(dp[N - 1][N - 1])
