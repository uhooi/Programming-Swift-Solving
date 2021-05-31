// https://atcoder.jp/contests/abc203/tasks/abc203_d

// FIXME: TLE
import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= K && K <= N && N <= 800)

let AA = (1...N).map { i in
    readLine()!.split(separator: " ").map { Int($0)! }
}
precondition(AA.allSatisfy { aa in aa.allSatisfy { 0 <= $0 && Double($0) <= pow(10, 9) } })

var answer = Int.max
for i in 1...(N - K + 1) {
    for j in 1...(N - K + 1) {
        var aa: [Int] = []
        for k in 0..<K {
            for l in 0..<K {
                aa.append(AA[i - 1 + k][j - 1 + l])
            }
        }
        aa.sort(by: >)
        let center = aa[K * K / 2]
        answer = answer > center ? center : answer
    }
}
print(answer)
