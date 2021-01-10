// https://atcoder.jp/contests/abc150/tasks/abc150_b

let n = Int(readLine()!)!
precondition(3 <= n && n <= 50)
let s = readLine()!
precondition(s.count == n)

var abcCount = 0
for i in 0...(n - 3) {
    let from = s.index(s.startIndex, offsetBy: i)
    let to = s.index(s.startIndex, offsetBy: i + 2)
    let substring = String(s[from...to])
    if substring == "ABC" {
        abcCount += 1
    }
}
print(abcCount)
