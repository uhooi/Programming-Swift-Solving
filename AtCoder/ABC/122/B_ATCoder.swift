// https://atcoder.jp/contests/abc122/tasks/abc122_b

import Foundation

let s = readLine()!
precondition(1 <= s.count && s.count <= 10)
precondition(
    try! NSRegularExpression(pattern: "^[A-Z]+$")
        .numberOfMatches(
            in: s,
            range: NSRange(location: 0, length: s.count)
        ) > 0
)

let answer = s
    .components(separatedBy: CharacterSet(charactersIn: "BDEFHIJKLMNOPQRSUVWXYZ"))
    .max { $0.count < $1.count }!
    .count
print(answer)
