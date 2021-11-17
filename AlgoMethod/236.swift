// 二重ループの全探索 4
// https://algo-method.com/tasks/236

// MARK: Input Functions

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let S = readString()
precondition(S.count <= 100)

// MARK: Main

print(Set(S).count)
