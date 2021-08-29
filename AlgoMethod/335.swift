// 動的計画法 2-7
// https://algo-method.com/tasks/335

let N = Int(readLine()!)!
precondition(2 <= N && N <= 100)

let aaa: [[Int]] = (1...N).map { _ in readLine()!.split(separator: " ").map { Int($0)! } }
precondition(aaa.count == N)
precondition(aaa.allSatisfy { aa in aa.count == N })
precondition(aaa.allSatisfy { aa in aa.allSatisfy { 1 <= $0 && $0 <= 100 } })

var dp = aaa
for row in 0..<N {
    for column in (0..<N).reversed() where ((row, column) != (0, (N - 1))) {
        let upSquare = (row - 1 < 0) ? Int.max : dp[row - 1][column]
        let rightSquare = (column + 1 >= N) ? Int.max : dp[row][column + 1]
        dp[row][column] += min(upSquare, rightSquare)
    }
}
print(dp[N - 1][0])
