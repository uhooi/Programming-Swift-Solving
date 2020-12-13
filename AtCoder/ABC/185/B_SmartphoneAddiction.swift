// https://atcoder.jp/contests/abc185/tasks/abc185_b

import Foundation
 
let nmt = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, t) = (nmt[0], nmt[1], nmt[2])
precondition(1 <= n && Double(n) <= pow(10, 9))
precondition(1 <= m && m <= 1_000)
precondition(1 <= t && Double(t) <= pow(10, 9))
 
var aabb: [[Int]] = []
for _ in 1...m {
    let ab = readLine()!.split(separator: " ").map { Int($0)! }
    aabb += [ab]
}
precondition(aabb.count == m)
 
var battery = n
var caffeeCount = 0
var result = "Yes"
for time in 0..<t {
    let halfTime = Double(time) + 0.5
    if Double(aabb[caffeeCount][0]) <= halfTime && halfTime <= Double(aabb[caffeeCount][1]) {
        battery = min(battery + 1, n)
        if halfTime + 0.5 == Double(aabb[caffeeCount][1]) {
            caffeeCount = min(caffeeCount + 1, m - 1)
        }
    } else {
        battery = max(battery - 1, 0)
        if battery == 0 {
            result = "No"
            break
        }
    }
}
print(result)
