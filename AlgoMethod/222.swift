// 数字の全探索 3
// https://algo-method.com/tasks/222

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

// MARK: Main

let answer = (N >= 2) && ((2...N).filter { N % $0 == 0 } .count == 1)
print(answer ? "Yes" : "No")
