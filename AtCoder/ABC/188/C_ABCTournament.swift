// https://atcoder.jp/contests/abc188/tasks/abc188_c

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && n <= 16)

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(Decimal(aa.count) == pow(2, n))
precondition(aa.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

var answer = 0
let twoHatN = NSDecimalNumber(decimal: pow(2, n)).intValue
var winnerIndexes = (1...twoHatN).map { $0 }
for i in 1...n {
    if i == n {
        let index1 = winnerIndexes[0]
        let index2 = winnerIndexes[1]
        answer = aa[index1 - 1] > aa [index2 - 1] ? index2 : index1
        break
    }
    var loserIndexes: [Int] = []
    let twoHatNMinusI = NSDecimalNumber(decimal: pow(2, (n - i))).intValue
    for j in 1...twoHatNMinusI {
        let index1 = winnerIndexes[(2 * j - 1) - 1]
        let index2 = winnerIndexes[(2 * j) - 1]
        if aa[index1 - 1] > aa[index2 - 1] {
            loserIndexes.append(index2)
        } else {
            loserIndexes.append(index1)
        }
    }
    winnerIndexes = winnerIndexes
        .filter { !loserIndexes.contains($0) }
}
print(answer)
