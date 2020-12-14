// https://atcoder.jp/contests/abs/tasks/abc083_b

import Foundation

let nab = readLine()!.split(separator: " ").map { Int($0)! }
let (n, a, b) = (nab[0], nab[1], nab[2])
precondition(1 <= n && Double(n) <= pow(10, 4))
precondition(1 <= a && a <= b && b <= 36)

var answer = 0
for i in 1...n {
    let sumOfEachDigit = i.digits.reduce(0, +)
    if a <= sumOfEachDigit && sumOfEachDigit <= b {
        answer += i
    }
}
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
