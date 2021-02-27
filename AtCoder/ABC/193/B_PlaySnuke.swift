// https://atcoder.jp/contests/abc193/tasks/abc193_b

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 5))

typealias APX = (a: Int, p: Int, x: Int)
let AAPPXX: [APX] = (1...N).map { _ in
    let apx = readLine()!.split(separator: " ").map { Int($0)! }
    return APX(a: apx[0], p: apx[1], x: apx[2])
}
precondition(AAPPXX.count == N)
precondition(AAPPXX.allSatisfy { 1 <= $0.a && Double($0.a) <= pow(10, 9) })
precondition(AAPPXX.allSatisfy { 1 <= $0.p && Double($0.p) <= pow(10, 9) })
precondition(AAPPXX.allSatisfy { 1 <= $0.x && Double($0.x) <= pow(10, 9) })

var answer = -1
for apx in AAPPXX.sorted(by: { $0.p < $1.p }) {
    if apx.x - apx.a > 0 {
        answer = apx.p
        break
    }
}
print(answer)
