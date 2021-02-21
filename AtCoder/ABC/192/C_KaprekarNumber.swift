// https://atcoder.jp/contests/abc192/tasks/abc192_c

import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(0 <= N && Double(N) <= pow(10, 9))
precondition(0 <= K && Double(K) <= pow(10, 5))

var answer = N
for _ in 0 ..< K {
    answer = f(answer)
}
print(answer)

private func f(_ x: Int) -> Int {
    g1(x) - g2(x)
}

private func g1(_ x: Int) -> Int {
    g(x, by: <)
}

private func g2(_ x: Int) -> Int {
    g(x, by: >)
}

private func g(_ x: Int, by areInIncreasingOrder: (Int, Int) throws -> Bool) -> Int {
    var result = 0
    let values = try! x.digits.sorted(by: areInIncreasingOrder)
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
