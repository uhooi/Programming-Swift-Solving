// https://atcoder.jp/contests/abc210/tasks/abc210_b

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 5))

let S = readLine()!
precondition(S.allSatisfy { ["0", "1"].contains($0) })
precondition(S.count == N)
precondition(S.contains("1"))

let firstOneIndex = S.firstIndex(of: "1")
let firstOneIndexInt = S.distance(from: S.startIndex, to: firstOneIndex!)
print(firstOneIndexInt % 2 == 0 ? "Takahashi" : "Aoki")
