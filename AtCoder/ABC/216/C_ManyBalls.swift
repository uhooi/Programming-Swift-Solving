// https://atcoder.jp/contests/abc216/tasks/abc216_c

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 18))

var answer = ""
var remaining = N
while remaining > 0 {
    if remaining == 1 {
        remaining -= 1
        answer += "A"
        break
    }
    if remaining % 2 == 0 {
        remaining /= 2
        answer += "B"
    } else {
        remaining -= 1
        answer +=  "A"
    }
}
print(String(answer.reversed()))
