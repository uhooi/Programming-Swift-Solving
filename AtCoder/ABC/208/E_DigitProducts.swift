// https://atcoder.jp/contests/abc208/tasks/abc208_e

// FIXME: TLE
import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= N && Double(N) <= pow(10, 18))
precondition(1 <= K && Double(K) <= pow(10, 9))

if N <= K {
    print(N)
} else {
    var answer = K
    for i in (K + 1)...N {
        if String(i).contains("0") {
            answer += 1
            continue
        }
        answer += (i.digits.reduce(1, *) <= K) ? 1 : 0
    }
    print(answer)
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
