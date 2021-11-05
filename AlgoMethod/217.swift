// 配列の全探索 9
// https://algo-method.com/tasks/217

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
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 9 })

// MARK: Main

var answer: [Int] = .init(repeating: 0, count: 9)
aa.forEach { answer[$0 - 1] += 1 }
answer.forEach { print($0) }
