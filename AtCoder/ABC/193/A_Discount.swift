// https://atcoder.jp/contests/abc193/tasks/abc193_a

import Foundation

let AB = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B) = (AB[0], AB[1])
precondition(1 <= B && B < A && Double(A) <= pow(10, 5))

print(100.0 - 100.0 * Double(B) / Double(A))
