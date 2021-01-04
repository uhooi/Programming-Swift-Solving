// https://atcoder.jp/contests/abc187/tasks/abc187_b

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 3))

typealias Point = (x: Int, y: Int)
var xxyy: [Point] = []
for _ in 1...n {
    let xy = readLine()!.split(separator: " ").map { Int($0)! }
    xxyy.append((x: xy[0], y: xy[1]))
}
precondition(xxyy.count == n)
precondition(xxyy.allSatisfy { Double(abs($0.x)) <= pow(10, 3) })
precondition(xxyy.allSatisfy { Double(abs($0.y)) <= pow(10, 3) })

var answer = 0
for i in 0..<(xxyy.count - 1) {
    for j in (i + 1)..<xxyy.count {
        let dy = xxyy[j].y - xxyy[i].y
        let dx = xxyy[j].x - xxyy[i].x
        if abs(dy) <= abs(dx) {
            answer += 1
        }
    }
}
print(answer)
