// https://atcoder.jp/contests/arc112/tasks/arc112_a

// FIXME: WA
import Foundation

let T = Int(readLine()!)!
precondition(1 <= T && Double(T) <= 2 * pow(10, 4))

typealias Case = (l: Int, r: Int)
let cases: [Case] = (1...T).map { _ in
    let lr = readLine()!.split(separator: " ").map { Int($0)! }
    return Case(l: lr[0], r:lr[1])
}
precondition(cases.count == T)
precondition(cases.allSatisfy { 0 <= $0.l && $0.l <= $0.r && Double($0.r) <= pow(10, 6) })

for lr in cases {
    if lr.l == lr.r {
        if lr.l == 0 {
            print(1)
            continue
        }
        print(0)
        continue
    }
    print((lr.r - 2 * lr.l + 1) * (lr.r - 2 * lr.l + 2) / 2)
}
