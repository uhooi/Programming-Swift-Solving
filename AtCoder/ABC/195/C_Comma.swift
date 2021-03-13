// https://atcoder.jp/contests/abc195/tasks/abc195_c

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 15))

// 1 〜 999: 0
// 1_000 〜 999_999: 1
// 1_000_000 〜 999_999_999: 2
// 1_000_000_000 〜 999_999_999_999: 3
// 1_000_000_000_000 〜 999_999_999_999_999: 4
// 1_000_000_000_000_000: 5
var answer = 0
if N >= 1_000 {
    if N >= 1_000_000 {
        answer += (999_999 - 999) * 1
        if N >= 1_000_000_000 {
            answer += (999_999_999 - 999_999) * 2
            if N >= 1_000_000_000_000 {
                answer += (999_999_999_999 - 999_999_999) * 3
                if N >= 1_000_000_000_000_000 {
                    answer += (999_999_999_999_999 - 999_999_999_999) * 4
                    answer += 5
                } else {
                    answer += (N - 999_999_999_999) * 4
                }
            } else {
                answer += (N - 999_999_999) * 3
            }
        } else {
            answer += (N - 999_999) * 2
        }
    } else {
        answer += (N - 999) * 1
    }
}
print(answer)
