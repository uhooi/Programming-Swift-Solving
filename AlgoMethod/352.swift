// Q3-6. 部分和問題 (応用 2)
// https://algo-method.com/tasks/352

import Foundation

// MARK: Functions

private func readInt3() -> (Int, Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 3)
    return (values[0], values[1], values[2])
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Main

let (N, A, B) = readInt3()
precondition(1 <= N && N <= 100)
precondition(1 <= A && A <= 10_000)
precondition(0 <= B && B <= A - 1)

let xx = readIntArray()
precondition(xx.count == N)
precondition(xx.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 6) })

var dp: [[Bool]] = .init(repeating: .init(repeating: false, count: A), count: N + 1)
dp[0][0] = true
for row in 1..<(N + 1) {
    dp[row] = dp[row - 1]
    for column in 0..<A {
        if dp[row - 1][column] || column == 0 {
            let dstColumn = (column + xx[row - 1]) % A
            dp[row][dstColumn] = true
        }
    }
}
print(dp[N][B] ? "Yes" : "No")
