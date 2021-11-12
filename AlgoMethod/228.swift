// 文字列の全探索 3
// https://algo-method.com/tasks/228

// MARK: Input Functions

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let S = readString()
precondition(S.count <= 100)

// MARK: Main

print((1..<S.count).filter { S[S.index(S.startIndex, offsetBy: $0 - 1)] == S[S.index(S.startIndex, offsetBy: $0)] } .count)
