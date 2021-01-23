// https://atcoder.jp/contests/abc189/tasks/abc189_d

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && N <= 60)

let ss = (1...N).map { _ in readLine()! }
precondition(ss.count == N)
precondition(ss.allSatisfy { ["AND", "OR"].contains($0) })

var answer = 1
var i = N + 1
for s in ss.reversed() {
    switch s {
    case "OR":
        answer += NSDecimalNumber(decimal: pow(2, (i - 1))).intValue
    case "AND":
        break
    default:
        preconditionFailure()
    }
    i -= 1
}
print(answer)
