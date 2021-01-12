// https://atcoder.jp/contests/abc095/tasks/arc096_a

import Foundation

let abcxy = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b, c, x, y) = (abcxy[0], abcxy[1], abcxy[2], abcxy[3], abcxy[4])
precondition(1 <= a && a <= 5_000)
precondition(1 <= b && b <= 5_000)
precondition(1 <= c && c <= 5_000)
precondition(1 <= x && Double(x) <= pow(10, 5))
precondition(1 <= y && Double(y) <= pow(10, 5))

var answer = 0
if a + b > c * 2 {
    answer = c * 2 * min(x, y)
    if x > y {
        answer += min(a, c * 2) * (x - y)
    } else {
        answer += min(b, c * 2) * (y - x)
    }
} else {
    answer = a * x + b * y
}
print(answer)
