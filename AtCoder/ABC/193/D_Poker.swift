// https://atcoder.jp/contests/abc193/tasks/abc193_d

import Foundation

let K = Int(readLine()!)!
precondition(2 <= K && Double(K) <= pow(10, 5))

let S = readLine()!
precondition(S.count == 5)
precondition(
    try! NSRegularExpression(pattern: "^[1-9]+$")
        .numberOfMatches(
            in: String(S.prefix(4)),
            range: NSRange(location: 0, length: S.prefix(4).count)
        ) > 0
)
precondition(S.suffix(1) == "#")

let T = readLine()!
precondition(T.count == 5)
precondition(
    try! NSRegularExpression(pattern: "^[1-9]+$")
        .numberOfMatches(
            in: String(T.prefix(4)),
            range: NSRange(location: 0, length: T.prefix(4).count)
        ) > 0
)
precondition(T.suffix(1) == "#")

let ss4 = S.prefix(4).map { Int(String($0))! }
let tt4 = T.prefix(4).map { Int(String($0))! }

var numerator = 0
for s in 1...9 {
    for t in 1...9 {
        let ss5 = ss4 + [s]
        let tt5 = tt4 + [t]
        let sScore = calculateScore(ss5)
        let tScore = calculateScore(tt5)
        let remainingS = (K - (ss4.filter { $0 == s } .count + tt4.filter { $0 == s } .count))
        if sScore > tScore {
            let remainingT = (K - (ss4.filter { $0 == t } .count + tt4.filter { $0 == t } .count))
            numerator += remainingS * (remainingT - (s == t ? 1 : 0))
        }
    }
}
print(Double(numerator) / Double((9 * K - 8) * (9 * K - 9)))

private func calculateScore(_ cards: [Int]) -> Int {
    (1...9)
        .map { i in i * pow(10, cards.filter { card in i == card } .count).intValue }
        .reduce(0, +)
}

private extension Decimal {
    var intValue: Int { NSDecimalNumber(decimal: self).intValue }
}
