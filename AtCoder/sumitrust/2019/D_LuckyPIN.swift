// https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_d

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
var checked1s: Set<String> = []
for i in 0...(n - 3) where !checked1s.contains(luckyNumbers[i]) {
    checked1s.insert(luckyNumbers[i])
    var checked2s: Set<String> = []
    for j in (i + 1)...(n - 2) where !checked2s.contains(luckyNumbers[j]) {
        checked2s.insert(luckyNumbers[j])
        var checked3s: Set<String> = []
        for k in (j + 1)...(n - 1) where !checked3s.contains(luckyNumbers[k]) {
            checked3s.insert(luckyNumbers[k])
            answers.insert(luckyNumbers[i] + luckyNumbers[j] + luckyNumbers[k])
        }
    }
}
print(answers.count)
