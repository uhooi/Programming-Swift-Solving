// 文字列の全探索 1
// https://algo-method.com/tasks/226

// MARK: Functions

private func readString() -> String {
    readLine()!
}

private func readCharacter() -> Character {
    Character(readLine()!)
}

// MARK: Inputs

let S = readString()
precondition(S.count <= 100)

let c = readCharacter()

// MARK: Main

print(S.contains(c) ? "Yes" : "No")
