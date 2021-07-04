// https://atcoder.jp/contests/abc208/tasks/abc208_a

let AB = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B) = (AB[0], AB[1])
precondition(1 <= A && A <= 100)
precondition(1 <= B && B <= 1_000)

print((6 * A >= B && A <= B) ? "Yes" : "No")
