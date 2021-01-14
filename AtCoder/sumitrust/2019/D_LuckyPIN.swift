// https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_d

// FIXME: TLE
import Foundation

let n = Int(readLine()!)!
precondition(4 <= n && n <= 30_000)

let s = readLine()!
precondition(s.count == n)
precondition(
    try! NSRegularExpression(pattern: "^[0-9]+$")
        .numberOfMatches(
            in: s,
            range: NSRange(location: 0, length: s.count)
        ) > 0
)

let luckyNumbers = s.map { String($0) }
var answers: Set<String> = []
for i in 0...(n - 3) {
    for j in (i + 1)...(n - 2) {
        for k in (j + 1)...(n - 1) {
            answers.insert(luckyNumbers[i] + luckyNumbers[j] + luckyNumbers[k])
        }
    }
}
print(answers.count)
