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

let cc: [Int] = (1...N).map { n in
    var abMax = 0
    for i in 1...n {
        for j in i...n where i <= j {
            abMax = max(abMax, aa[i - 1] * bb[j - 1])
        }
    }
    return abMax
}
cc.forEach { print($0) }
