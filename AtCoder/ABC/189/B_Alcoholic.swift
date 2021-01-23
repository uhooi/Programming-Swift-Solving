// https://atcoder.jp/contests/abc189/tasks/abc189_b

// FIXME: WA
import Foundation

let NX = readLine()!.split(separator: " ").map { Int($0)! }
let (N, X) = (NX[0], NX[1])
precondition(1 <= N && Double(N) <= pow(10, 3))
precondition(0 <= X && Double(X) <= pow(10, 6))

typealias Liqueur = (v: Int, p: Int)
let liqueurs: [Liqueur] = (1...N).map { _ in
    let vp = readLine()!.split(separator: " ").map { Int($0)! }
    return Liqueur(v: vp[0], p: vp[1])
}
precondition(liqueurs.count == N)
precondition(liqueurs.allSatisfy { 1 <= $0.v && Double($0.v) <= pow(10, 3) })
precondition(liqueurs.allSatisfy { 0 <= $0.p && $0.p <= 100 })

var answer = -1
var alcoholLimit = X
for i in 1...N {
    let liqueur = liqueurs[i - 1]
    alcoholLimit -= liqueur.v * liqueur.p / 100
    if alcoholLimit < 0 {
        answer = i
        break
    }
}
print(answer)
