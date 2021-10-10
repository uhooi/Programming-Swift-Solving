// 標準入力3-9
// https://algo-method.com/tasks/58

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readNewLineStringArray(_ count: Int) -> [String] {
    precondition(count >= 1)
    return (1...count).map { _ in readLine()! }
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 1_000)

let ss = readNewLineStringArray(N)
precondition(ss.count == N)
precondition(ss.allSatisfy { 1 <= $0.count && $0.count <= 2_000 })

// MARK: Main

print(String(ss.map { $0.first! }))
