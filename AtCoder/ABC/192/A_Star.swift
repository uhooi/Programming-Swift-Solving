// https://atcoder.jp/contests/abc192/tasks/abc192_a

import Foundation

let X = Int(readLine()!)!
precondition(0 <= X && Double(X) <= pow(10, 5))

print(100 - (X % 100))
