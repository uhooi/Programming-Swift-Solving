// https://atcoder.jp/contests/abc201/tasks/abc201_b

import Foundation

let N = Int(readLine()!)!
precondition(2 <= N && N <= 1_000)

typealias Mountain = (s: String, t: Int)
let mountains: [Mountain] = (1...N).map { _ in
    let mountain = readLine()!.split(separator: " ").map { String($0) }
    return Mountain(s: mountain[0], t: Int(mountain[1])!)
}
precondition(mountains.count == N)
precondition(mountains.allSatisfy { 1 <= $0.s.count && $0.s.count <= 15 })
precondition(mountains.allSatisfy { 1 <= $0.t && Double($0.t) <= pow(10, 5) })

let sortedMountains = mountains.sorted { $0.t > $1.t }
print(sortedMountains[1].s)
