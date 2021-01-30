// https://atcoder.jp/contests/abc190/tasks/abc190_d

// FIXME: TLE
import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 12))

var answer = 2
if N > 1 {
    answer += N % 2 == 0 ? 0 : 2
    for i in 1...(N / 3) {
        var j = 0
        var count = 0
        while j < N {
            j += i + count
            count += 1
        }
        answer += j == N ? 2 : 0
    }
}
print(answer)
