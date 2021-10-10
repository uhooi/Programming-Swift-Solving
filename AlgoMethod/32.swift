// 標準入力2-9
// https://algo-method.com/tasks/32

// MARK: Functions

private func readString() -> String {
    readLine()!
}

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Inputs

let S = readString()
precondition(1 <= S.count && S.count <= 20)

let N = readInt()
precondition(1 <= N && N <= S.count)

// MARK: Main

print(S[S.index(S.startIndex, offsetBy: N - 1)])
