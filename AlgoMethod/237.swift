// 二重ループの全探索 5
// https://algo-method.com/tasks/237

// MARK: Input Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readNewLineStringArray(_ count: Int) -> [String] {
    precondition(count >= 1)
    return (1...count).map { _ in readLine()! }
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

let ss = readNewLineStringArray(N)
precondition(ss.count == N)
precondition(ss.allSatisfy { $0.count <= 100 })

// MARK: Other Functions

private extension String {
    var isPalindrome: Bool { self == String(self.reversed()) }
}

// MARK: Main

print(ss.lazy.filter { $0.isPalindrome } .count)
