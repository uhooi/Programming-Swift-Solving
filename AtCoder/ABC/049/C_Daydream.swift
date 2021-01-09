// https://atcoder.jp/contests/abs/tasks/arc065_a

import Foundation

var s = readLine()!
precondition(1 <= s.count && Double(s.count) <= pow(10, 5))

let words = ["dream", "dreamer", "erase", "eraser"]
while !s.isEmpty {
    var hasSuffix = false
    for word in words where s.hasSuffix(word) {
        s.removeLast(word.count)
        hasSuffix = true
        break
    }
    if !hasSuffix {
        break
    }
}
print(s.isEmpty ? "YES" : "NO")
