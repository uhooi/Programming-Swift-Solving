// 動的計画法 3-2
// https://algo-method.com/tasks/337

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Main

let (N, M) = readInt2()
precondition(2 <= N && N <= 100)
precondition(1 <= M && M <= 10_000)

let ww = readIntArray()
precondition(ww.count == N)
precondition(ww.allSatisfy { 1 <= $0 && $0 <= 1_000 })

var dp: [[Bool]] = .init(repeating: .init(repeating: false, count: M + 1), count: N + 1)
dp[0][0] = true
for row in 1..<(N + 1) {
    dp[row] = dp[row - 1]
    for column in 0..<(M + 1) {
        let dstColumn = column + ww[row - 1]
        if dp[row - 1][column] && dstColumn < (M + 1) {
            dp[row][dstColumn] = true
        }
    }
}
print(dp[N][M] ? "Yes" : "No")
