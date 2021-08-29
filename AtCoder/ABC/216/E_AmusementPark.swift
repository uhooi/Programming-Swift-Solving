// https://atcoder.jp/contests/abc216/tasks/abc216_e

// TODO:
import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= N && Double(N) <= pow(10, 15))
precondition(1 <= K && Double(K) <= 2 * pow(10, 9))

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && Double($0) <= 2 * pow(10, 9) })

var answer = 0
var remaining = K
var sortedAa = aa.sorted()
while remaining > 0 && sortedAa.count > 0 {
    var aLast = sortedAa.popLast()
    var count = aLast! - (sortedAa.last ?? 0) + 1
    remaining -= count
    count += remaining < 0 ? remaining : 0
    for _ in 0..<count where aLast! > 0 {
        answer += aLast!
        aLast = aLast! - 1
    }
}
print(answer)
