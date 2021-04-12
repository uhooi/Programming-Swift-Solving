// https://atcoder.jp/contests/abc198/tasks/abc198_b

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 9))

var answer = false
var n = String(N)
for _ in 0...9 {
    if n == String(n.reversed()) {
        answer = true
        break
    }
    n = "0" + n
}
print(answer ? "Yes" : "No")
