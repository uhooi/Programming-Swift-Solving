// https://atcoder.jp/contests/abc192/tasks/abc192_b

import Foundation

let S = readLine()!
precondition(1 <= S.count && S.count <= 1_000)
precondition(
    try! NSRegularExpression(pattern: "^[a-zA-Z]+$")
        .numberOfMatches(
            in: S,
            range: NSRange(location: 0, length: S.count)
        ) > 0
)

var answer = true
let s = S.map { String($0) }
for i in 1...S.count {
    if i % 2 == 1 && "a" <= s[i - 1] && s[i - 1] <= "z" {
        continue
    }
    if i % 2 == 0 && "A" <= s[i - 1] && s[i - 1] <= "Z" {
        continue
    }
    answer = false
    break
}
print(answer ? "Yes" : "No")
