// https://atcoder.jp/contests/arc114/tasks/arc114_b

// FIXME: WA
import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= 2.0 * pow(10, 5))

let FF = readLine()!.split(separator: " ").map { Int($0)! }
precondition(FF.count == N)
precondition(FF.allSatisfy { 1 <= $0 && $0 <= N })
