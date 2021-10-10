// 標準入力2-7
// https://algo-method.com/tasks/31

// MARK: Functions

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let S = readString()
precondition(1 <= S.count && S.count <= 20)

let T = readString()
precondition(1 <= T.count && T.count <= 20)

// MARK: Main

print(S == T ? "Yes" : "No")
