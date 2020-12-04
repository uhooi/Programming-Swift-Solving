// https://atcoder.jp/contests/abc180/tasks/abc180_c

import Foundation

// FIXME: TLE
let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 12))

for i in 1...n {
    if n % i == 0 {
        print(i)
    }
}
