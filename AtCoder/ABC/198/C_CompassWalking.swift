// https://atcoder.jp/contests/abc198/tasks/abc198_c

// FIXME: WA
import Foundation

let rxy = readLine()!.split(separator: " ").map { Int($0)! }
let (R, X, Y) = (rxy[0], rxy[1], rxy[2])
precondition(1 <= R && Double(R) <= pow(10, 5))
precondition(0 <= X && Double(X) <= pow(10, 5))
precondition(0 <= Y && Double(Y) <= pow(10, 5))
precondition((X, Y) != (0, 0))

print(Int(ceil(sqrt(pow(Double(X), 2) + pow(Double(Y), 2)) / Double(R))))
