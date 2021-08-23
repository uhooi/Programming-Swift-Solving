// 動的計画法 2-1
// https://algo-method.com/tasks/324

let columnCount = 4
let rowCount = 4

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == columnCount)
precondition(aa.allSatisfy { 0 <= $0 && $0 <= 9 })

var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: columnCount), count: rowCount)
dp[0] = aa
for row in 1..<rowCount {
    for column in row..<columnCount {
        var sum = 0
        if column - 1 >= 0 {
            sum += dp[row - 1][column - 1]
        }
        sum += dp[row - 1][column]
        if column + 1 < columnCount {
            sum += dp[row - 1][column + 1]
        }
        dp[row][column] = sum
    }
}
print(dp[rowCount - 1][columnCount - 1])
