// https://atcoder.jp/contests/abc188/tasks/abc188_d

// FIXME: TLE
import Foundation

let NC = readLine()!.split(separator: " ").map { Int($0)! }
let (N, C) = (NC[0], NC[1])
precondition(1 <= N && Double(N) <= 2 * pow(10, 5))
precondition(1 <= C && Double(C) <= pow(10, 9))

typealias ABC = (a: Int, b: Int, c: Int)
let aabbcc: [ABC] = (1...N).map { _ in
    let abc = readLine()!.split(separator: " ").map { Int($0)! }
    return ABC(a: abc[0], b: abc[1], c: abc[2])
}
precondition(aabbcc.allSatisfy { 1 <= $0.a && $0.a <= $0.b && Double($0.b) <= pow(10, 9) })
precondition(aabbcc.allSatisfy { 1 <= $0.c && Double($0.c) <= pow(10, 9) })

var sum: [Int: Int] = [:]
for i in 1...N {
    for j in (aabbcc[i - 1].a)...(aabbcc[i - 1].b) {
        let cost: Int
        if let value = sum[j] {
            cost = value + aabbcc[i - 1].c
        } else {
            cost = aabbcc[i - 1].c
        }
        sum[j] = cost > C ? C : cost
    }
}

var answer = 0
sum.forEach { answer += $0.value }
print(answer)
