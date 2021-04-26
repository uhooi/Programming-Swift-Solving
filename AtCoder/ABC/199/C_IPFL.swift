// https://atcoder.jp/contests/abc199/tasks/abc199_c

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= 2 * pow(10, 5))

let S = readLine()!
precondition(S.count == 2 * N)
precondition(
    try! NSRegularExpression(pattern: "^[A-Z]+$")
        .numberOfMatches(
            in: S,
            range: NSRange(location: 0, length: S.count)
        ) > 0
)

let Q = Int(readLine()!)!
precondition(1 <= Q && Double(Q) <= 3 * pow(10, 5))

typealias Query = (t: Int, a: Int, b: Int)
let queries: [Query] = (1...Q).map { _ in
    let query = readLine()!.split(separator: " ").map { Int($0)! }
    return Query(t: query[0], a: query[1], b: query[2])
}
precondition(queries.count == Q)
precondition(queries.allSatisfy { [1, 2].contains($0.t) })
precondition(queries.allSatisfy {
    ($0.t == 1 && 1 <= $0.a && $0.a < $0.b && $0.b <= 2 * N) ||
        ($0.t == 2 && $0.a == 0 && $0.b == 0)
})

var answers = S.map { String($0) }
var isSwitched = false
for query in queries {
    switch query.t {
    case 1:
        let a: Int
        let b: Int
        if isSwitched {
            a = query.a + (query.a <= N ? N : -N) - 1
            b = query.b + (query.b <= N ? N : -N) - 1
        } else {
            a = query.a - 1
            b = query.b - 1
        }
        answers.swapAt(a, b)
    case 2:
        isSwitched.toggle()
    default:
        preconditionFailure()
    }
}
answers = isSwitched ? answers.dropFirst(answers.count / 2) + answers.dropLast(answers.count / 2) : answers
print(answers.joined())
