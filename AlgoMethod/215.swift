// 配列の全探索 5
// https://algo-method.com/tasks/215

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

// MARK: Main

let answer = (1...(N - 1)).filter { aa[$0] > aa[$0 - 1] } .count
print(answer)
