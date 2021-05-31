// https://atcoder.jp/contests/abc203/tasks/abc203_c

import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= N && Double(N) <= 2 * pow(10, 5))
precondition(1 <= K && Double(K) <= pow(10, 9))

typealias Friend = (village: Int, money: Int)
let friends: [Friend] = (1...N).map { _ in
    let friend = readLine()!.split(separator: " ").map { Int($0)! }
    return Friend(village: friend[0], friend[1])
}
precondition(friends.count == N)
precondition(friends.allSatisfy { 1 <= $0.village && Double($0.village) <= pow(10, 18) })
precondition(friends.allSatisfy { 1 <= $0.money && Double($0.money) <= pow(10, 9) })

var friendsDictionary: [Int: Int] = [:]
friends.forEach { friendsDictionary[$0.village, default: 0] += $0.money }

var currentVillage = 0
var currentMoney = K
for village in friendsDictionary.keys.sorted() {
    let count = village - currentVillage
    currentMoney -= count
    currentVillage += count
    if currentMoney >= 0 {
        currentMoney += friendsDictionary[village]!
    } else {
        break
    }
}
print(currentVillage + currentMoney)
