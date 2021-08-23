// 動的計画法 1-6
// https://algo-method.com/tasks/323

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (NM[0], NM[1])
precondition(1 <= N && N <= 1_000)
precondition(1 <= M && M <= 20)

let dd = readLine()!.split(separator: " ").map { Int($0)! }
precondition(dd.count == M)
precondition(dd.allSatisfy { 1 <= $0 && $0 <= 1_000 })

var dp: [Bool] = .init(repeating: false, count: N + 1)
dp[0] = true
for square in 1...N {
    for dice in dd where square - dice >= 0 && dp[square - dice] {
        dp[square] = true
        break
    }
}
print(dp[N] ? "Yes" : "No")
