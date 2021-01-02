// https://atcoder.jp/contests/abc187/tasks/abc187_b

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 3))

var xxyy: [[Int]] = []
for _ in 1...n {
    xxyy.append(readLine()!.split(separator: " ").map { Int($0)! })
}
precondition(xxyy.count == n)
precondition(xxyy.allSatisfy { Double(abs($0[0])) <= pow(10, 3) })
precondition(xxyy.allSatisfy { Double(abs($0[1])) <= pow(10, 3) })

var answer = 0
for i in xxyy.indices {
    if i >= (xxyy.count - 1) {
        break
    }
    for j in (i + 1)..<xxyy.count {
        let dy = xxyy[j][1] - xxyy[i][1]
        let dx = xxyy[j][0] - xxyy[i][0]
        let m: Double = Double(dy) / Double(dx)
        if -1 <= m && m <= 1 {
            answer += 1
        }
    }
}
print(answer)
