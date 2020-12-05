// https://atcoder.jp/contests/arc110/tasks/arc110_a

let n = Int(readLine()!)!
precondition(2 <= n && n <= 30)

// FIXME: TLE
var answer: Int?
for i in n...10000000000000 {
    for j in 2...n {
        if i % j != 1 {
            break
        }
        if j == n {
            answer = i
            break
        }
    }
    if answer != nil {
        break
    }
}
print(answer!)
