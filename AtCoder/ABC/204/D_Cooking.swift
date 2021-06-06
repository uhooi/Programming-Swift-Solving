// https://atcoder.jp/contests/abc204/tasks/abc204_d

// FIXME: WA
import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && N <= 100)

let tt = readLine()!.split(separator: " ").map { Int($0)! }
precondition(tt.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 3) })

var answer1 = 0
var answer2 = 0
for t in tt.sorted(by: >) {
    if answer1 >= answer2 {
        answer2 += t
    } else {
        answer1 += t
    }
}
print(answer1 >= answer2 ? answer1 : answer2)
