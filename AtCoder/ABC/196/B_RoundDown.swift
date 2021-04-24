// https://atcoder.jp/contests/abc196/tasks/abc196_b

import Foundation

let X = readLine()!
precondition(1 <= X.count && X.count <= 101)

let pointRange = X.range(of: ".")
let answer: String
if let pointRange = pointRange {
    answer = String(String(X[...pointRange.lowerBound]).dropLast())
} else {
    answer = X
}
print(answer)
