// Q3-7. ボールと 2 つの箱
// https://algo-method.com/tasks/353

// FIXME: TLE & MLE

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Main

let N = readInt()
precondition(1 <= N && N <= 50)

let ww = readIntArray()
precondition(ww.count == N)
precondition(ww.allSatisfy { 1 <= $0 && $0 <= 1_000 })

var dp: [[Int]] = .init(repeating: [], count: N + 1)
dp[0].append(ww[0])
dp[0].append(-ww[0])
for row in 1..<(N + 1) {
    for sum in dp[row - 1] {
        dp[row].append(sum + ww[row - 1])
        dp[row].append(sum - ww[row - 1])
    }
}
print(dp[N].lazy.map { abs($0) } .min()!)
