// https://atcoder.jp/contests/abc208/tasks/abc208_b

import Foundation

let P = Int(readLine()!)!
precondition(1 <= P && Double(P) <= pow(10, 7))

var answer = 0
var sum = P
var coinAmount = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
var coin = 10
while sum != 0 {
    if sum >= coinAmount {
        sum -= coinAmount
        answer += 1
    } else {
        coinAmount /= coin
        coin -= 1
    }
}
print(answer)
