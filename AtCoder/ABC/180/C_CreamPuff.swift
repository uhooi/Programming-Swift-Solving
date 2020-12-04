// https://atcoder.jp/contests/abc180/tasks/abc180_c

import Foundation

// FIXME: TLE
let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 12))

let secondLargest = n % 2 == 0 ? n / 2 : (n - 1) / 2
for i in 1...secondLargest {
    if n % i == 0 {
        print(i)
    }
}
print(n)
