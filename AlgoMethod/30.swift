// 標準入力2-3
// https://algo-method.com/tasks/30

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Extensions

private extension Numeric where Self: LosslessStringConvertible {
    var digits: [Int] { string.digits }
}
private extension LosslessStringConvertible {
    var string: String { String(self) }
}
private extension StringProtocol {
    var digits: [Int] { compactMap { $0.wholeNumberValue } }
}

// MARK: Inputs

let (A, B) = readInt2()
precondition(1 <= A && A <= 100)
precondition(1 <= B && B <= 100)
precondition(A.digits.last! != B.digits.last!)

// MARK: Main

print(A.digits.last! < B.digits.last! ? A : B)
