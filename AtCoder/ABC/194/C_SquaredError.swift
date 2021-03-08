// https://atcoder.jp/contests/abc194/tasks/abc194_c

import Foundation

let N = Int(readLine()!)!
precondition(2 <= N && Double(N) <= 3 * pow(10, 5))

let AA = readLine()!.split(separator: " ").map { Int($0)! }
precondition(AA.count == N)
precondition(AA.allSatisfy { abs($0) <= 200 })

var answer = 0
var aaSum = AA.reduce(0, +)
for a in AA {
    aaSum -= a
    answer += (N - 1) * a * a - 2 * a * aaSum
}
print(answer)
