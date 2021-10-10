// 標準入力3-4
// https://algo-method.com/tasks/56

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 1_000)

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 1_000 })

// MARK: Main

aa.lazy.filter { $0 % 3 == 0 } .forEach { print($0) }
