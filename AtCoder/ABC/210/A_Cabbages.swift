// https://atcoder.jp/contests/abc210/tasks/abc210_a

import Foundation

let NAXY = readLine()!.split(separator: " ").map { Int($0)! }
let (N, A, X, Y) = (NAXY[0], NAXY[1], NAXY[2], NAXY[3])
precondition(1 <= N && Double(N) <= pow(10, 5))
precondition(1 <= A && Double(A) <= pow(10, 5))
precondition(1 <= Y && Y < X && X <= 100)

var answer = 0
for i in 1...N {
    answer += i > A ? Y : X
}
print(answer)
