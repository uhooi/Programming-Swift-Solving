// https://atcoder.jp/contests/abs/tasks/abc081_b

let n = Int(readLine()!)!
precondition(1 <= n && n <= 200)
let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == n)

var answer = 0
for a in aa {
    if a % 2 != 0 {
        print(answer)
        return
    }
}
var aa = aa.map { $0 / 2 }
for a in aa {
    if a % 2 != 0 {
        print(answer)
        return
    }
}


private func isAll
