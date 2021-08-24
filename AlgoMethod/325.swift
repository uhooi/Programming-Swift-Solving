// 動的計画法 2-2
// https://algo-method.com/tasks/325

let N = Int(readLine()!)!
precondition(2 <= N && N <= 100)

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 0 <= $0 && $0 <= 99 })

var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: N), count: N)
dp[0] = aa
for row in 1..<N {
    for column in row..<N {
        var sum = 0
        if column - 1 >= 0 {
            sum += dp[row - 1][column - 1]
        }
        sum += dp[row - 1][column]
        if column + 1 < N {
            sum += dp[row - 1][column + 1]
        }
        dp[row][column] = (sum % 100)
    }
}
print(dp[N - 1][N - 1])
