// 標準入力2-4
// https://algo-method.com/tasks/28

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

// MARK: Main

print(A % B == 0 ? "Yes" : "No")
