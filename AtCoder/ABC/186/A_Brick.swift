// https://atcoder.jp/contests/abc186/tasks/abc186_a

import Foundation

let nw = readLine()!.split(separator: " ").map { Int($0)! }
let (n, w) = (nw[0], nw[1])
precondition(1 <= n && n <= 1_000)
precondition(1 <= w && w <= 1_000)

print(Int(floor(Double(n) / Double(w))))
