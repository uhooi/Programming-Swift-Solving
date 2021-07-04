// https://atcoder.jp/contests/abc208/tasks/abc208_c

import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= N && Double(N) <= 2 * pow(10, 5))
precondition(1 <= K && Double(K) <= pow(10, 18))

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

var answers: [Int: Int] = [:]
var over = K % N
for a in aa.sorted() where over > 0 {
    answers[a, default: 0] = 1
    over -= 1
}

let base = K / N
for a in aa {
    print(base + (answers[a] ?? 0))
}
