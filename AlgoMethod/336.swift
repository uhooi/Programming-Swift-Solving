// 動的計画法 3-1
// https://algo-method.com/tasks/336

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (NM[0], NM[1])
precondition(2 <= N && N <= 100)
precondition(1 <= M && M <= 10_000)

let aa: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N - 1)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 1_000 })

var dp: [Bool] = .init(repeating: false, count: M)
dp[0] = true
for row in 1..<N {
    var tmpDp: [Bool] = dp
    for column in 0..<M {
        let destination = column + aa[row - 1]
        if dp[column] && destination < M {
            tmpDp[destination] = true
        }
    }
    dp = tmpDp
}
print(dp.filter { $0 } .count)
