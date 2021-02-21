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

let answer = S.enumerated().allSatisfy { $0 % 2 == 0 ? $1.isLowercase : $1.isUppercase }
print(answer ? "Yes" : "No")
