// https://atcoder.jp/contests/abc191/tasks/abc191_b

import Foundation

let NX = readLine()!.split(separator: " ").map { Int($0)! }
let (N, X) = (NX[0] ,NX[1])
precondition(1 <= N && Double(N) <= pow(10, 5))
precondition(1 <= X && Double(X) <= pow(10, 9))

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

print(aa.filter { $0 != X } .map { String($0) } .joined(separator: " "))
