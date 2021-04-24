// https://atcoder.jp/contests/abc196/tasks/abc196_c

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 12))

let answer: Int
let nString = String(N)
if nString.count > 1 {
    let n: String
    if nString.count % 2 == 0 {
        n = nString
    } else {
        n = (1...(nString.count - 1)).map { _ in String(9) } .joined()
    }
    
    let firstHalf = Int(n.prefix(n.count / 2))!
    let lastHalf = Int(n.suffix(n.count / 2))!
    answer = firstHalf <= lastHalf ? firstHalf : firstHalf - 1
} else {
    answer = 0
}
print(answer)
