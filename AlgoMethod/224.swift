// 数字の全探索 4
// https://algo-method.com/tasks/224

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

private func gcd(_ a: Int, _ b: Int) -> Int {
    precondition(a > 0 && b >= 0)
    return b == 0 ? a : gcd(b, a % b)
}

// MARK: Inputs

let (A, B) = readInt2()
precondition(1 <= A && A <= 100)
precondition(1 <= B && B <= 100)

// MARK: Main

print(gcd(A, B))
