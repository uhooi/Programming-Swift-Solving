// https://atcoder.jp/contests/abc057/tasks/abc057_c

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 10))

var answer = Int.max
for a in 1...Int(floor(sqrt(Double(n)))) where n % a == 0 {
    let b = n / a
    let f = F(a, b)
    answer = min(answer, f)
}
print(answer)

private func F(_ lhs: Int, _ rhs: Int) -> Int {
    max(lhs.digits.count, rhs.digits.count)
}

private extension Numeric where Self: LosslessStringConvertible {
    var digits: [Int] { string.digits }
}
private extension LosslessStringConvertible {
    var string: String { String(self) }
}
private extension StringProtocol {
    var digits: [Int] { compactMap { $0.wholeNumberValue } }
}
