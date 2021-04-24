// https://atcoder.jp/contests/abc196/tasks/abc196_a

let ab = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b) = (ab[0], ab[1])
precondition(-100 <= a && a <= b && b <= 100)

let cd = readLine()!.split(separator: " ").map { Int($0)! }
let (c, d) = (cd[0], cd[1])
precondition(-100 <= c && c <= d && d <= 100)

print(b - c)
