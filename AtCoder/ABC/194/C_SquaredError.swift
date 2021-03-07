// https://atcoder.jp/contests/abc194/tasks/abc194_c

// FIXME: TLE
import Foundation

let N = Int(readLine()!)!
precondition(2 <= N && Double(N) <= 3 * pow(10, 5))

let AA = readLine()!.split(separator: " ").map { Int($0)! }
precondition(AA.count == N)
precondition(AA.allSatisfy { abs($0) <= 200 })

var answer = 0
for i in 0...(N - 2) {
    for j in i...(N - 1) {
        answer += (AA[i] - AA[j]) * (AA[i] - AA[j])
    }
}
print(answer)
