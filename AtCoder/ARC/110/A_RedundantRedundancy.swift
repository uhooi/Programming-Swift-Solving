// https://atcoder.jp/contests/arc110/tasks/arc110_a

import Foundation

let n = Int(readLine()!)!
precondition(2 <= n && n <= 30)

// FIXME: WA
print((2...n).reduce(1, *) + 1)
