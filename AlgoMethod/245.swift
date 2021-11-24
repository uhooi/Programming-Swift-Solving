// ペアの全探索 2
// https://algo-method.com/tasks/245

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

let (L, R) = readInt2()
precondition(1 <= L && L <= 1_000)
precondition(1 <= R && R <= 1_000)
precondition(L <= R)

// MARK: Main

var answer = 0
for i in L..<R {
    for j in (i + 1)...R where i % 10 == j % 10 {
        answer += 1
    }
}
print(answer)
