// 配列の全探索 10
// https://algo-method.com/tasks/219

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

var counts: [Int] = .init(repeating: 0, count: 9)
aa.forEach { counts[$0 - 1] += 1 }

var answer = 1
var countMax = Int.min
for (index, value) in counts.enumerated() where value > countMax {
    (answer, countMax) = (index + 1, value)
}
print(answer)
