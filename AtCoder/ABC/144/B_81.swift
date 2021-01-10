// https://atcoder.jp/contests/abc144/tasks/abc144_b

let n = Int(readLine()!)!
precondition(1 <= n && n <= 100)

var answer = "No"
for i in 1...9 where answer == "No" {
    for j in i...9 where i * j == n {
        answer = "Yes"
        break
    }
}
print(answer)
