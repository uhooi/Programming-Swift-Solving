// 二重ループの全探索 1
// https://algo-method.com/tasks/234

// MARK: Input Functions

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
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

// MARK: Other Functions

private extension Int {
    var isPrime: Bool {
        guard self > 1 else {
            return false
        }
        return (2..<self).lazy.filter { self % $0 == 0 } .count == 0
    }
}

// MARK: Main

print(aa.lazy.filter { $0.isPrime } .count)
