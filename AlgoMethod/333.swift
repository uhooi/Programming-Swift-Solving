// 動的計画法 2-5
// https://algo-method.com/tasks/333

let N = Int(readLine()!)!
precondition(2 <= N && N <= 16)

let sss: [[String]] = (1...N).map { _ in readLine()!.map { s in String(s) } }
precondition(sss.count == N)
precondition(sss.allSatisfy { $0.count == N })
precondition(sss.allSatisfy { $0.allSatisfy { s in [".", "#"].contains(s) } })

var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: N), count: N)
dp[0][0] = 1
for row in 0..<N {
    for column in 0..<N where !((row, column) == (0, 0)) {
        switch sss[row][column] {
        case "#":
            dp[row][column] = 0
        case ".":
            let upSquare = (row - 1 < 0) ? 0 : dp[row - 1][column]
            let leftSquare = (column - 1 < 0) ? 0 : dp[row][column - 1]
            dp[row][column] = upSquare + leftSquare
        default:
            preconditionFailure()
        }
    }
}
print(dp[N - 1][N - 1])
