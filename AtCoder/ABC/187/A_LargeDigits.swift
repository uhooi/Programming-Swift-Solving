// https://atcoder.jp/contests/abc187/tasks/abc187_a

let ab = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b) = (ab[0], ab[1])
precondition(100 <= a && a <= 999)
precondition(100 <= b && b <= 999)

let aSum = a.digits.reduce(0, +)
let bSum = b.digits.reduce(0, +)
print(aSum >= bSum ? aSum : bSum)

private extension Numeric where Self: LosslessStringConvertible {
    var digits: [Int] { string.digits }
}
private extension LosslessStringConvertible {
    var string: String { String(self) }
}
private extension StringProtocol {
    var digits: [Int] { compactMap { $0.wholeNumberValue } }
}
