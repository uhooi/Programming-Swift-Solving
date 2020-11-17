// https://atcoder.jp/contests/abc180/tasks/abc180_a

let nab = readLine()!.split(separator: " ").map { Int($0)! }
let n = nab[0]
precondition(100 <= n && n <= 200)
let a = nab[1]
precondition(1 <= a && a <= 100)
let b = nab[2]
precondition(1 <= b && b <= 100)

print(n - a + b)
