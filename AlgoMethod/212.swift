// 配列の全探索 3
// https://algo-method.com/tasks/212

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
precondition(aa.allSatisfy { -100 <= $0 && $0 <= 100 })

// MARK: Main

let answer = aa.filter { $0 > 0 } .count
print(answer)
