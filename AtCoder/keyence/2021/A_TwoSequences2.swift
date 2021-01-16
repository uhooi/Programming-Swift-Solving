// https://atcoder.jp/contests/keyence2021/tasks/keyence2021_a

// FIXME: TLE
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
for n in 1...N {
    var abMax = n == 1 ? 0 : cc[n - 2]
    for i in 1...n {
        abMax = max(abMax, aa[i - 1] * bb[n - 1])
    }
    cc.append(abMax)
}
cc.forEach { print($0) }
