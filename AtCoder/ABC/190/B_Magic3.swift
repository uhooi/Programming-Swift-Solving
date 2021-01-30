// https://atcoder.jp/contests/abc190/tasks/abc190_b

import Foundation

let NSD = readLine()!.split(separator: " ").map { Int($0)! }
let (N, S, D) = (NSD[0], NSD[1], NSD[2])
precondition(1 <= N && N <= 100)
precondition(1 <= S && Double(S) <= pow(10, 9))
precondition(1 <= D && Double(D) <= pow(10, 9))

typealias Spell = (x: Int, y: Int)
let spells: [Spell] = (1...N).map { _ in
    let xxyy = readLine()!.split(separator: " ").map { Int($0)! }
    return Spell(x: xxyy[0], y: xxyy[1])
}
precondition(spells.count == N)
precondition(spells.allSatisfy { 1 <= $0.x && Double($0.x) <= pow(10, 9) })
precondition(spells.allSatisfy { 1 <= $0.y && Double($0.y) <= pow(10, 9) })

print(spells.filter { $0.x < S && $0.y > D } .count > 0 ? "Yes" : "No")
