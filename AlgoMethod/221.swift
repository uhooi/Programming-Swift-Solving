// 数字の全探索 2
// https://algo-method.com/tasks/221

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

// MARK: Main

print((1...N).filter { N % $0 == 0 } .count)
