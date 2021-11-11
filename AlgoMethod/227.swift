// 文字列の全探索 2
// https://algo-method.com/tasks/227

// MARK: Functions

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let S = readString()
precondition(1 <= S.count && S.count <= 100)

// MARK: Main

print(S == String(S.reversed()) ? "Yes" : "No")
