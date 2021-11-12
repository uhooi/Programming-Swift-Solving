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

let ss = Array(S)
print((1..<ss.count).lazy.filter { ss[$0 - 1] == ss[$0] } .count)
