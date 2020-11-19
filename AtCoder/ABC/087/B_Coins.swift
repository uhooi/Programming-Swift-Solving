// https://atcoder.jp/contests/abs/tasks/abc087_b

let a = Int(readLine()!)!
precondition(0 <= a && a <= 50)
let b = Int(readLine()!)!
precondition(0 <= b && b <= 50)
let c = Int(readLine()!)!
precondition(0 <= c && c <= 50)
precondition(a + b + c >= 1)
let x = Int(readLine()!)!
precondition(50 <= x && x <= 20000)
precondition(x % 50 == 0)

var answer = 0
var fiveHundredCount = a
for fiveHundredYenCount in 0...a {
    for oneHundredYenCount in 0...b {
        for fiftyYenCount in 0...c {
            let total = 500 * fiveHundredYenCount + 100 * oneHundredYenCount + 50 * fiftyYenCount
            if total == x {
                answer += 1
            }
        }
    }
}
print(answer)
