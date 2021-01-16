// https://atcoder.jp/contests/keyence2021/tasks/keyence2021_b

// FIXME: WA
import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= K && K <= N && Double(N) <= 3 * pow(10, 5))

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 0 <= $0 && $0 <= N })

var answers: [Int] = (1...N).map { _ in 0 }
var prevCount = Int.max
var current = 0
var currentCount = 0
for a in aa.sorted() {
    if a == current {
        if currentCount >= prevCount || currentCount >= K {
            continue
        }
        currentCount += 1
        answers[currentCount - 1] = a + 1
    } else if a == current + 1 {
        prevCount = currentCount
        current = a
        currentCount = 1
        answers[currentCount - 1] = a + 1
    } else if a > current + 1 {
        break
    }
}
print(answers.reduce(0, +))
