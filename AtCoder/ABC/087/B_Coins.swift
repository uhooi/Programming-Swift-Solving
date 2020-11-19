// https://atcoder.jp/contests/abs/tasks/abc087_b

// FIXME: WA
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
where fiveHundredCount > 0 {
    if x % 500 == 0 && 500 * fiveHundredCount >= x {
        fiveHundredCount -= 1
        answer += 1
    }
}

var oneHundredCount = b
var fiftyCount = c
