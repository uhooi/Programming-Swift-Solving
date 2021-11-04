// 配列の全探索 7
// https://algo-method.com/tasks/211

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

var answer = 0
var aaMax = Int.min
for (index, a) in aa.enumerated() where a > aaMax {
    (answer, aaMax) = (index, a)
}
print(answer)
