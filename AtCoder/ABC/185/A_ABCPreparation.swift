// https://atcoder.jp/contests/abc185/tasks/abc185_a

let aa = readLine()!.split(separator: " ").map { Int($0)! }
let (a1, a2, a3, a4) = (aa[0], aa[1], aa[2], aa[3])
precondition(1 <= a1 && a1 <= 100)
precondition(1 <= a2 && a2 <= 100)
precondition(1 <= a3 && a3 <= 100)
precondition(1 <= a4 && a4 <= 100)

print(min(a1, a2, a3, a4))
