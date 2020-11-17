// https://atcoder.jp/contests/abs/tasks/abc086_a

let ab = readLine()!.split(separator: " ").map { Int($0)! }
let a = ab[0]
precondition(1 <= a && a <= 10000)
let b = ab[1]
precondition(1 <= b && b <= 10000)

print((a * b) % 2 == 0 ? "Even" : "Odd")
