// https://atcoder.jp/contests/abs/tasks/arc065_a

// FIXME: TLE
import Foundation

var s = readLine()!
precondition(1 <= s.count && Double(s.count) <= pow(10, 5))

let words = ["dream", "dreamer", "erase", "eraser"]
while s.count > 0 {
    var hasSuffix = false
    for word in words where s.hasSuffix(word) {
        s = String(s.dropLast(word.count))
        hasSuffix = true
        break
    }
    if !hasSuffix {
        break
    }
}
print(s.count == 0 ? "YES" : "NO")
