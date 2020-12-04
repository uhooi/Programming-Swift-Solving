// https://atcoder.jp/contests/abc180/tasks/abc180_c

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 12))

var secondHalfs: [Int] = []
for i in 1...n {
    let secondHalf = n / i
    if secondHalf < i {
        break
    }
    if n % i == 0 {
        print(i)
        if secondHalf != i {
            secondHalfs.insert(secondHalf, at: 0)
        }
    }
}

for i in secondHalfs {
    print(i)
}
