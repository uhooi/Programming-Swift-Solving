// ペアの全探索 1
// https://algo-method.com/tasks/244

// FIXME: WA

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

let (N, K) = readInt2()
precondition(2 <= N && N <= 100)
precondition(2 <= K && K <= 200)

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

// MARK: Main

var answer = 0
for i in 0...(N - 1) {
    for j in (i + 1)...N where aa[i] + aa[j] <= K {
        answer += 1
    }
}
print(answer)
