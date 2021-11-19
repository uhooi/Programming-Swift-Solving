// 複数の配列の全探索 2
// https://algo-method.com/tasks/232

// MARK: Input Functions

private func readInt3() -> (Int, Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 3)
    return (values[0], values[1], values[2])
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let (N, M, K) = readInt3()
precondition(1 <= N && N <= 100)
precondition(1 <= M && M <= 100)
precondition(1 <= K && K <= 200)

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

let bb = readIntArray()
precondition(bb.count == M)
precondition(bb.allSatisfy { 1 <= $0 && $0 <= 100 })

// MARK: Main

var answer = 0
for a in aa {
    for b in bb where a + b == K {
        answer += 1
    }
}
print(answer)
