// https://atcoder.jp/contests/abs/tasks/arc065_a

import Foundation

// FIXME: TLE
import Foundation

var s = readLine()!
precondition(1 <= s.count && Double(s.count) <= pow(10, 5))

var isLooping = true
while isLooping && s.count > 0 {
    switch s.prefix(5) {
    case "dream":
        s = String(s.dropFirst(5))
        if s.prefix(5) == "erase" {
            s = String(s.dropFirst(5))
            if s.prefix(1) == "r" {
                s = String(s.dropFirst(1))
            }
        } else if s.prefix(2) == "er" {
            s = String(s.dropFirst(2))
        }
    case "erase":
        s = String(s.dropFirst(5))
        if s.prefix(1) == "r" {
            s = String(s.dropFirst(1))
        }
    default:
        isLooping = false
    }
}
print(s.count == 0 ? "YES" : "NO")
