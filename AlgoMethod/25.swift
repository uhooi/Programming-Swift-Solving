// 標準入力2-5
// https://algo-method.com/tasks/25

// MARK: Functions

private func readInt3() -> (Int, Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 3)
    return (values[0], values[1], values[2])
}

// MARK: Inputs

let (A, B, C) = readInt3()
precondition(1 <= A && A <= 100)
precondition(1 <= B && B <= 100)
precondition(1 <= C && C <= 100)

// MARK: Main

print((A + B + C) / 3)
