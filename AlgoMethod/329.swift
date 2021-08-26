// 動的計画法 2-4
// https://algo-method.com/tasks/329

let N = Int(readLine()!)!
precondition(2 <= N && N <= 16)

var dp: [[Int]] = .init(repeating: .init(repeating: 1, count: N), count: N)
for i in 1..<N {
    for j in i..<N {
        let sum = dp[i - 1][j] + dp[i][j - 1]
        dp[i][j] = sum
        dp[j][i] = sum
    }
}
print(dp[N - 1][N - 1])
