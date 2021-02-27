// https://atcoder.jp/contests/abc193/tasks/abc193_c

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 10))

var answers: Set<Int> = []
if N >= 4 {
    for a in 2...Int(floor(sqrt(Double(N)))) {
        for b in 2...N { // TODO: N未満でも大丈夫だけど、適切な数字が思いつかない
            let aHatB = pow(Decimal(a), b).intValue
            if aHatB > N {
                break
            }
            answers.insert(aHatB)
        }
    }
}
print(N - answers.count)

private extension Decimal {
    var intValue: Int { NSDecimalNumber(decimal: self).intValue }
}
