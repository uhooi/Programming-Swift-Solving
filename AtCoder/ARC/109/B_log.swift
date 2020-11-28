// https://atcoder.jp/contests/arc109/tasks/arc109_b

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 18))

//var wanted = (1...n).reduce(0, +)
//var answer = 0
//for k in (1...n + 1).reversed() {
//    answer += 1
//    wanted -= k
//    if wanted <= 0 {
//        break
//    }
//}
//print(answer)

var answer = n + 1
var sum = 0
for k in 1...n {
    sum += k
    if sum > n + 1 {
        break
    }
    answer -= 1
}
print(answer)
