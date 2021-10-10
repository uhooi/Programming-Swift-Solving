// 標準入力1-2
// https://algo-method.com/tasks/16

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

// MARK: Main

print(N % 5)
