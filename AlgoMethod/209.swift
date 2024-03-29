// 配列の全探索 1
// https://algo-method.com/tasks/209

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let (N, V) = readInt2()
precondition(1 <= N && N <= 100)
precondition(1 <= V && V <= 100)

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

// MARK: Main

let answer = aa.filter { $0 == V } .count > 0
print(answer ? "Yes" : "No")
