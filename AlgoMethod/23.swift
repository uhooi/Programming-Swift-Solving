// 標準入力1-5
// https://algo-method.com/tasks/23

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Inputs

let X = readInt()
precondition(0 <= X && X <= 23)

// MARK: Main

print(24 - X)
