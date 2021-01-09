// https://atcoder.jp/contests/abs/tasks/arc089_a

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 5))

typealias TimeAndPoint = (t: Int, x: Int, y: Int)
let ttxxyy: [TimeAndPoint] = (1...n).map { _ in
    let txy = readLine()!.split(separator: " ").map { Int($0)! }
    return TimeAndPoint(t: txy[0], x: txy[1], y: txy[2])
}
precondition(ttxxyy.allSatisfy { 0 <= $0.x && Double($0.x) <= pow(10, 5) })
precondition(ttxxyy.allSatisfy { 0 <= $0.y && Double($0.y) <= pow(10, 5) })
precondition(ttxxyy.allSatisfy { 1 <= $0.t && Double($0.t) <= pow(10, 5) })

var answer = "Yes"
var base: TimeAndPoint = (t: 0, x: 0, y: 0)
for txy in ttxxyy {
    let timeDiff = txy.t - base.t
    let pointDiff = abs(txy.x - base.x) + abs(txy.y - base.y)
    if timeDiff >= pointDiff && (timeDiff + pointDiff) % 2 == 0 {
        base = txy
    } else {
        answer = "No"
        break
    }
}
print(answer)
