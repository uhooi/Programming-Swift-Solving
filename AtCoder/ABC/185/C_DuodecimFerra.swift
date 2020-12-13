// https://atcoder.jp/contests/abc185/tasks/abc185_c

import Foundation

let l = Int(readLine()!)!
precondition(12 <= l && l <= 200)

var answer = 1
for i in 1...11 {
    answer *= l - i
    answer /= i
}
precondition(Double(answer) < pow(2, 63))
print(answer)
