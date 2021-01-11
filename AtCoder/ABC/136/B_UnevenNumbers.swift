// https://atcoder.jp/contests/abc136/tasks/abc136_b

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 5))

let answer = (1...n)
    .filter { $0.digits.count % 2 != 0 }
    .count
print(answer)

private extension Numeric where Self: LosslessStringConvertible {
    var digits: [Int] { string.digits }
}
private extension LosslessStringConvertible {
    var string: String { String(self) }
}
private extension StringProtocol {
    var digits: [Int] { compactMap { $0.wholeNumberValue } }
}
