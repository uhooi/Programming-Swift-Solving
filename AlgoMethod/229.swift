
// 文字列の全探索 5
// https://algo-method.com/tasks/229

import Foundation

// MARK: Input Functions

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let S = readString()
precondition(S.count == 100)

let T = readString()
precondition(T.count == 100)

precondition(S.count >= T.count)

// MARK: Main

print(S.contains(T) ? "Yes" : "No")
