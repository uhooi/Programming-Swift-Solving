// 数字の全探索 1
// https://algo-method.com/tasks/220

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

// MARK: Main

print((1...N).filter { $0 % 2 != 0 && $0 % 3 != 0 && $0 % 5 != 0 } .count)
