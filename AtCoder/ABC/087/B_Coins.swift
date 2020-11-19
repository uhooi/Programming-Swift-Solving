// https://atcoder.jp/contests/abs/tasks/abc087_b

let (a, b, c, x) = (readInt(), readInt(), readInt(), readInt())
precondition(0 <= a && a <= 50)
precondition(0 <= b && b <= 50)
precondition(0 <= c && c <= 50)
precondition(a + b + c >= 1)
precondition(50 <= x && x <= 20000)
precondition(x % 50 == 0)

var answer = 0
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

private func readInt() -> Int {
    Int(readLine()!)!
}
