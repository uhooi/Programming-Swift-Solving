// 動的計画法 1-5
// https://algo-method.com/tasks/306

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (NM[0], NM[1])
precondition(2 <= N && N <= 100)
precondition(1 <= M && M <= N)

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

var dp: [Int] = [0, aa[1]]
for i in 2..<N {
    var minT = Int.max
    for j in 1...M where i >= j {
        minT = min(minT, dp[i - j] + j * aa[i])
    }
    dp.append(minT)
}
print(dp.last!)
