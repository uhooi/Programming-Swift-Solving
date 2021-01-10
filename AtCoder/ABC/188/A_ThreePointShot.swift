// https://atcoder.jp/contests/abc188/tasks/abc188_a

let xy = readLine()!.split(separator: " ").map { Int($0)! }
let (x, y) = (xy[0], xy[1])
precondition(0 <= x && x <= 100)
precondition(0 <= y && y <= 100)
precondition(x != y)

print(abs(x - y) < 3 ? "Yes" : "No")
