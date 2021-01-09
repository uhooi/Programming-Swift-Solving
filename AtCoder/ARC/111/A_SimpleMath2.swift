// https://atcoder.jp/contests/arc111/tasks/arc111_a

// FIXME: WA
import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
precondition(1 <= n && Double(n) <= pow(10, 18))
precondition(1 <= m && m <= 10_000)

let x = pow(10, Double(n)) / Double(m)
let answer = Double(floor(x)).truncatingRemainder(dividingBy: Double(m))
print(Int(answer))
