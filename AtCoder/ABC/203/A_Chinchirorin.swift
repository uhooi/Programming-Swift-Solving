// https://atcoder.jp/contests/abc203/tasks/abc203_a

let abc = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b, c) = (abc[0], abc[1], abc[2])
precondition(1 <= a && a <= 6)
precondition(1 <= b && b <= 6)
precondition(1 <= c && c <= 6)
let answer: Int
if a == b {
    answer = c
} else if a == c {
    answer = b
} else if b == c {
    answer = a
} else {
    answer = 0
}
print(answer)
