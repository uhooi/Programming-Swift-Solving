// https://atcoder.jp/contests/abc192/tasks/abc192_d

import Foundation

// FIXME: WA
let X = readLine()!
precondition(1 <= X.count && X.count <= 60)
precondition(
    try! NSRegularExpression(pattern: "^[0-9]+$")
        .numberOfMatches(
            in: X,
            range: NSRange(location: 0, length: X.count)
        ) > 0
)

let M = Int(readLine()!)!
precondition(1 <= M && Double(M) <= pow(10, 18))

let d = X.map { Int(String($0))! } .max()!
var answer = 0
let x = Double(X)!
for i in (d + 1)...Int.max {
    if convert(x, shinsu: i) > M {
        break
    }
    answer += 1
}
print(answer)

private func convert(_ value: Double, shinsu: Int) -> Int {
    var result = 0
    var values = value.digits
    values.removeLast()
    values.reverse()
    for i in 1...values.count {
        result += pow(Decimal(shinsu), (i - 1)).intValue * values[i - 1]
    }
    return result
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

private extension Decimal {
    var intValue: Int { NSDecimalNumber(decimal: self).intValue }
}
