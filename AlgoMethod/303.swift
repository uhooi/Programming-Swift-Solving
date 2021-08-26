// 動的計画法 1-2
// https://algo-method.com/tasks/303

let N = Int(readLine()!)!
precondition(2 <= N && N <= 100)

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

var dp: [Int] = [0, aa[1]]
for i in 2..<N {
    dp.append(min(dp[i - 1] + aa[i], dp[i - 2] + aa[i] * 2))
}
print(dp.last!)
