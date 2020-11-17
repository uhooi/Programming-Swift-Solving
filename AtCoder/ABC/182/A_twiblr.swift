// https://atcoder.jp/contests/abc182/tasks/abc182_a

let ab = readLine()!.split(separator: " ").map { Int($0)! }
let a = ab[0]
precondition(0 <= a && a <= 10000)
let b = ab[1]
precondition(0 <= b && b <= 10000)
precondition(b <= 2 * a + 100)

print((2 * a + 100) - b)
