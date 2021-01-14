// https://atcoder.jp/contests/abc145/tasks/abc145_c

import Foundation

let n = Int(readLine()!)!
precondition(2 <= n && n <= 8)

typealias Point = (x: Int, y: Int)
let xxyy: [Point] = (1...n).map { _ in
    let xy = readLine()!.split(separator: " ").map { Int($0)! }
    return Point(x: xy[0], y: xy[1])
}
precondition(xxyy.allSatisfy { -1_000 <= $0.x && $0.x <= 1_000 })
precondition(xxyy.allSatisfy { -1_000 <= $0.y && $0.y <= 1_000 })

var answer: Double = 0
let routes = permutations(of: xxyy)
for route in routes {
    for i in 0..<(route.count - 1) {
        answer += sqrt(pow(Double(route[i + 1].x - route[i].x), 2) + pow(Double(route[i + 1].y - route[i].y), 2))
    }
}
print(answer / Double(routes.count))

private func permutations<T>(of values: [T]) -> [[T]] {
    if values.count <= 1 {
        return [values]
    }
    var results: [[T]] = []
    for i in values.indices {
        let baseValue = values[i]
        var excludingBaseValue = values
        excludingBaseValue.remove(at: i)
        results += permutations(of: excludingBaseValue).map { [baseValue] + $0 }
    }
    return results
}
