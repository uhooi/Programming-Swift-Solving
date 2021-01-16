// https://atcoder.jp/contests/keyence2021/tasks/keyence2021_a

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= 2 * pow(10, 5))

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

let bb = readLine()!.split(separator: " ").map { Int($0)! }
precondition(bb.count == N)
precondition(bb.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

var cc: [Int] = []
var aMax = 0
for n in 1...N {
    aMax = max(aMax, aa[n - 1])
    cc.append(max(n == 1 ? 0 : cc[n - 2], aMax * bb[n - 1]))
}
cc.forEach { print($0) }
