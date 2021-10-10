// 標準入力2-2
// https://algo-method.com/tasks/27

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Inputs

let (A, B) = readInt2()
precondition(1 <= A && A <= 100)
precondition(1 <= B && B <= 100)
precondition(A != B)

// MARK: Main

print(max(A, B))
