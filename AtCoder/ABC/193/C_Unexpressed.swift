// https://atcoder.jp/contests/abc193/tasks/abc193_c

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 10))

var answers: Set<Int> = []
if N >= 4 {
    for a in 2...Int(floor(sqrt(Double(N)))) {
        var aHatB = a * a
        while aHatB <= N {
            answers.insert(aHatB)
            aHatB *= a
        }
    }
}
print(N - answers.count)
