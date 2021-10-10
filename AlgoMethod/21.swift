// 標準入力1-3
// https://algo-method.com/tasks/21

// MARK: Functions

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let S = readString()
precondition(1 <= S.count && S.count <= 100)

// MARK: Main

print(S + S + S)
