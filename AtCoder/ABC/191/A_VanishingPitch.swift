// https://atcoder.jp/contests/abc191/tasks/abc191_a

let VTSD = readLine()!.split(separator: " ").map { Int($0)! }
let (V, T, S, D) = (VTSD[0] ,VTSD[1], VTSD[2], VTSD[3])
precondition(1 <= V && V <= 1_000)
precondition(1 <= T && T < S && S <= 1_000)
precondition(1 <= D && D <= 1_000)

print(D < V * T || V * S < D ? "Yes" : "No")
