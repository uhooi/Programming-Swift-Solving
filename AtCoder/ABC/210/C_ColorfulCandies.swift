// https://atcoder.jp/contests/abc210/tasks/abc210_c

// FIXME: TLE
import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= K && K <= N && Double(N) <= 3 * pow(10, 5))

let cc = readLine()!.split(separator: " ").map { Int($0)! }
precondition(cc.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

var stack: [Int] = Array(cc[0...(K - 1)])
var answer = Set(stack).count
if N != K {
    for i in K...(N - 1) {
        stack.removeFirst()
        stack.append(cc[i])
        let count = Set(stack).count
        answer = max(answer, count)
    }
}
print(answer)
