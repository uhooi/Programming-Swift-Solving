// https://atcoder.jp/contests/abc199/tasks/abc199_a

let ABC = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B, C) = (ABC[0], ABC[1], ABC[2])
precondition(0 <= A && A <= 1_000)
precondition(0 <= B && B <= 1_000)
precondition(0 <= C && C <= 1_000)

print(A * A + B * B < C * C ? "Yes" : "No")
