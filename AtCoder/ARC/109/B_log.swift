// https://atcoder.jp/contests/arc109/tasks/arc109_b

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 18))

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
