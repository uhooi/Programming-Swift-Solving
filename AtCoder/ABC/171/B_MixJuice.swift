// https://atcoder.jp/contests/abc171/tasks/abc171_b

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0]
let k = nk[1]
precondition(1 <= k && k <= n && n <= 1000)

let pp = readLine()!.split(separator: " ").map { Int($0)! }

print(pp.sorted().prefix(k).reduce(0, +))
