// https://atcoder.jp/contests/abc195/tasks/abc195_a

let MH = readLine()!.split(separator: " ").map { Int($0)! }
let (M, H) = (MH[0] ,MH[1])
precondition(1 <= M && M <= 1_000)
precondition(1 <= H && H <= 1_000)

print(H % M == 0 ? "Yes" : "No")
