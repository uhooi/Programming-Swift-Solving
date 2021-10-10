// 標準入力2-6
// https://algo-method.com/tasks/29

// MARK: Functions

private func readInt4() -> (Int, Int, Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 4)
    return (values[0], values[1], values[2], values[3])
}

// MARK: Inputs

let (A, B, C, D) = readInt4()
precondition(1 <= A && A <= 100)
precondition(1 <= B && B <= 100)
precondition(1 <= C && C <= 100)
precondition(1 <= D && D <= 100)

// MARK: Main

print(max(A, B, C, D))
