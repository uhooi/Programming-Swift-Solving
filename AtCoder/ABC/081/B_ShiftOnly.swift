// https://atcoder.jp/contests/abs/tasks/abc081_b

let n = Int(readLine()!)!
precondition(1 <= n && n <= 200)
var aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == n)

var answer = 0
var isAllEven = true
while isAllEven {
    for a in aa where a % 2 != 0 {
        isAllEven = false
        break
    }
    if isAllEven {
        aa = aa.map { $0 / 2 }
        answer += 1
    }
}
print(answer)
