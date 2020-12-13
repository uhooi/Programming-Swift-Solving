// https://atcoder.jp/contests/abc185/tasks/abc185_c

import Foundation

let l = Int(readLine()!)!
precondition(12 <= l && l <= 200)

let answer = combination(n: l - 1, r: 11)
precondition(Double(answer) < pow(2, 63))
print(answer)

private func combination(n: Int, r: Int) -> Int {
    precondition(n >= r)
    var result = 1
    for i in 1...r {
        result *= n - (i - 1)
        result /= i
    }
    return result
}
