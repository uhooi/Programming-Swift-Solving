// Q3-2. フォロー
// https://algo-method.com/tasks/412

// FIXME: RE

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

private func readNewLineInt2Array(_ count: Int) -> [(Int, Int)] {
    precondition(count >= 1)
    return (1...count).map { _ in
        let values = readLine()!.split(separator: " ").map { Int(String($0))! }
        precondition(values.count == 2)
        return (values[0], values[1])
    }
}

// MARK: Inputs

let (N, M) = readInt2()
precondition(2 <= N && N <= 100_000)
precondition(0 <= M && M <= min(N * (N - 1), 100_000))

let aabb = readNewLineInt2Array(M)
precondition(aabb.count == M)
precondition(aabb.allSatisfy { (a, b) in a != b })
precondition(aabb.allSatisfy { (a, _) in 0 <= a && a <= N - 1 })
precondition(aabb.allSatisfy { (_, b) in 0 <= b && b <= N - 1 })

// MARK: Main

var answers: [[Int]] = .init(repeating: .init(repeating: -1, count: N), count: N)
for (a, b) in aabb {
    answers[a][b] = b
}
for a in 0..<N {
    print(answers[a].lazy.filter { $0 != -1 } .map { String($0) } .joined(separator: " "))
}
