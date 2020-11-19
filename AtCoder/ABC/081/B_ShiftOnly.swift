// https://atcoder.jp/contests/abs/tasks/abc081_b

let n = Int(readLine()!)!
precondition(1 <= n && n <= 200)
var aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == n)

var answer = 0
while !aa.contains(where: { $0 % 2 != 0 }) {
    aa = aa.map { $0 / 2 }
    answer += 1
}
print(answer)
