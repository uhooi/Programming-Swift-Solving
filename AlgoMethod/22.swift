// 標準入力1-4
// https://algo-method.com/tasks/22

// MARK: Functions

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let S = readString()
precondition(S.count == 5)

// MARK: Main

print(S[S.index(S.startIndex, offsetBy: 2)])
