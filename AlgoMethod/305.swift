// 動的計画法 1-4
// https://algo-method.com/tasks/305

let N = Int(readLine()!)!
precondition(1 <= N && N <= 30)

var dp: [Int] = [1, 2, 4]
if N >= 3 {
    for i in 3..<N {
        dp.append(dp[i - 3] + dp[i - 2] + dp[i - 1])
    }
}
print(dp[N - 1])
