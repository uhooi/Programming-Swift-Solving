// https://atcoder.jp/contests/abc208/tasks/abc208_d

// TODO:
import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (NM[0], NM[1])
precondition(1 <= N && N <= 400)
precondition(0 <= M && M <= N * (N - 1))

typealias ABC = (a: Int, b: Int, c: Int)
let aabbcc: [ABC] = (1...M).map { _ in
    let abc = readLine()!.split(separator: " ").map { Int($0)! }
    return ABC(a: abc[0], b: abc[1], c: abc[2])
}
precondition(aabbcc.count == M)
precondition(aabbcc.allSatisfy { 1 <= $0.a && $0.a <= N })
precondition(aabbcc.allSatisfy { 1 <= $0.b && $0.b <= N })
precondition(aabbcc.allSatisfy { $0.a != $0.b })
precondition(aabbcc.allSatisfy { 1 <= $0.c && Double($0.c) <= pow(10, 6) })

var answer = 0
for s in 1...N {
    for t in 1...N where s != t {
        for k in 1...N {
            // TODO:
        }
    }
}
print(answer)
