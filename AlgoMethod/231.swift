// 複数の配列の全探索 1
// https://algo-method.com/tasks/231

// MARK: Input Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let (N, M) = readInt2()
precondition(1 <= N && N <= 100)
precondition(1 <= M && M <= 100)

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

let bb = readIntArray()
precondition(bb.count == M)
precondition(bb.allSatisfy { 1 <= $0 && $0 <= 100 })

// MARK: Main

var answer = 0
for a in aa {
    for b in bb where a > b {
        answer += 1
    }
}
print(answer)
