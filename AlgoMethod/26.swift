// 標準入力2-8
// https://algo-method.com/tasks/26

// MARK: Functions

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let S = readString()
precondition(1 <= S.count && S.count <= 20)

let T = readString()
precondition(1 <= T.count && T.count <= 20)

let U = readString()
precondition(1 <= U.count && U.count <= 20)

// MARK: Main

print(U + T + S)
