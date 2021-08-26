// 動的計画法 1-3
// https://algo-method.com/tasks/304

let N = Int(readLine()!)!
precondition(1 <= N && N <= 40)

var dp: [Int] = [1, 1]
for i in 2..<(N + 1) {
    dp.append(dp[i - 2] + dp[i - 1])
}
print(dp[N])
