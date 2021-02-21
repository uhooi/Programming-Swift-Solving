// https://atcoder.jp/contests/abc192/tasks/abc192_c

import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(0 <= N && Double(N) <= pow(10, 9))
precondition(0 <= K && Double(K) <= pow(10, 5))

var answer = N
for _ in 0 ..< K {
    answer = f(answer)
}
print(answer)

private func f(_ x: Int) -> Int {
    g1(x) - g2(x)
}

private func g1(_ x: Int) -> Int {
    Int(String(String(x).sorted(by: >)))!
}

private func g2(_ x: Int) -> Int {
    Int(String(String(x).sorted(by: <)))!
}
