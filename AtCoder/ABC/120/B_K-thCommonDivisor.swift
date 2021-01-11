// https://atcoder.jp/contests/abc120/tasks/abc120_b

let abk = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b, k) = (abk[0], abk[1], abk[2])
precondition(1 <= a && a <= 100)
precondition(1 <= b && b <= 100)
precondition(1 <= k)

let answers = (1...Int(min(a, b)))
    .filter { a % $0 == 0 }
    .filter { b % $0 == 0 }
    .sorted(by: >)
print(answers[k - 1])
