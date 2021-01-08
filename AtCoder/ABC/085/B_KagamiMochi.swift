// https://atcoder.jp/contests/abs/tasks/abc085_b

let n = Int(readLine()!)!
precondition(1 <= n && n <= 100)

let dd = (1...n).map { _ in Int(readLine()!)! }
precondition(dd.allSatisfy { 1 <= $0 && $0 <= 100 })

print(Set(dd).count)
