// 動的計画法 3-3
// https://algo-method.com/tasks/341

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

let aa = readIntArray()
precondition(aa.count == N - 1)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 1_000 })

let bb = readIntArray()
precondition(bb.count == N - 1)
precondition(bb.allSatisfy { 1 <= $0 && $0 <= 1_000 })

var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: M), count: N)
for row in 1..<N {
    dp[row] = dp[row - 1]
    for column in 0..<M {
        let dstColumn = column + aa[row - 1]
        if (dp[row - 1][column] > 0 || column == 0) && dstColumn < M {
            dp[row][dstColumn] = max(dp[row - 1][column] + bb[row - 1], dp[row - 1][dstColumn])
        }
    }
}
let answer = dp[N - 1][M - 1]
print((answer == 0) ? -1 : answer)
