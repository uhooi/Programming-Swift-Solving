// Q3-5. 部分和問題(応用 1)
// https://algo-method.com/tasks/350

// FIXME: WA

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

var dp: [[[Int]]] = .init(repeating: .init(repeating: [], count: M + 1), count: N + 1)
for row in 1..<(N + 1) {
    dp[row] = dp[row - 1]
    for column in 0..<(M + 1) {
        let dstColumn = column + ww[row - 1]
        if dstColumn < (M + 1) && (dp[row - 1][dstColumn].count > dp[row - 1][column].count + 1 || column == 0) {
            dp[row][dstColumn] = dp[row - 1][column] + [ww[row - 1]]
        }
    }
}
print(dp[N][M].isEmpty ? -1 : dp[N][M].count)
