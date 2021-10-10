// 標準入力1-1
// https://algo-method.com/tasks/15

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

// MARK: Main

print(N * 2)
