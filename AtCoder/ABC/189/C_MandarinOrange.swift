// https://atcoder.jp/contests/abc189/tasks/abc189_c

// FIXME: TBD
import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 4))

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 5) })
