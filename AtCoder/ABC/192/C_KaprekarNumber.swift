// https://atcoder.jp/contests/abc192/tasks/abc192_c

import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(0 <= N && Double(N) <= pow(10, 9))
precondition(0 <= K && Double(K) <= pow(10, 5))

var answer = N
if K > 0 {
    for _ in 1...K {
      answer = f(answer)
    }
}
print(answer)

private func f(_ value: Int) -> Int {
    g1(value) - g2(value)
}

private func g1(_ value: Int) -> Int {
    var result = 0
    let values = value.digits.sorted(by: <)
    for i in 1...values.count {
        result += values[i - 1] * pow(10, (i - 1)).intValue
    }
    return result
}

private func g2(_ value: Int) -> Int {
    var result = 0
    let values = value.digits.sorted(by: >)
    for i in 1...values.count {
        result += values[i - 1] * pow(10, (i - 1)).intValue
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
