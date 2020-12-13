// https://atcoder.jp/contests/abc185/tasks/abc185_c

// FIXME: RE
import Foundation

let l = Int(readLine()!)!
precondition(12 <= l && l <= 200)
let answer = l == 12 ? 1 : combinationWays(m: l - 1, n: 11)
precondition(Double(answer) < pow(2, 63))
print(answer)

private func combinationWays(m: Int, n: Int) -> Int {
    permutationWays(of: m) / (permutationWays(of: n) * permutationWays(of: m - n))
}

private func permutationWays(of value: Int) -> Int {
    precondition(value > 0)
    return (1...value).reduce(1, *)
}
