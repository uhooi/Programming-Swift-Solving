// https://atcoder.jp/contests/abs/tasks/practice_1

let a = Int(readLine()!)!
precondition(1 <= a && a <= 1000)

let bc = readLine()!.split(separator: " ").map { Int($0)! }
let b = bc[0]
precondition(1 <= b && b <= 1000)
let c = bc[1]
precondition(1 <= c && c <= 1000)

let s = readLine()!
precondition(1 <= s.count && s.count <= 100)

print(a + b + c, s)
