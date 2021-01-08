// https://atcoder.jp/contests/abs/tasks/abc085_c

import Foundation

let NY = readLine()!.split(separator: " ").map { Int($0)! }
let (N, Y) = (NY[0], NY[1])
precondition(1 <= N && N <= 2_000)
precondition(1_000 <= Y && Double(Y) <= 2 * pow(10, 7))
precondition(Y % 1_000 == 0)

var x = -1
var y = -1
var z = -1
for i in 0...N where x == -1 {
    for j in 0...(N - i) {
        let k = N - (i + j)
        if 10_000 * i + 5_000 * j + 1_000 * k == Y {
            x = i
            y = j
            z = k
            break
        }
    }
}
print(x, y, z)
