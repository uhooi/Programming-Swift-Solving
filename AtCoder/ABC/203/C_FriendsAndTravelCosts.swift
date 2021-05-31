// https://atcoder.jp/contests/abc203/tasks/abc203_c

// FIXME: TLE
import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= N && Double(N) <= 2 * pow(10, 5))
precondition(1 <= K && Double(K) <= pow(10, 9))

typealias Friend = (village: Int, money: Int)
let friends: [Friend] = (1...N).map { _ in
    let friend = readLine()!.split(separator: " ").map { Int($0)! }
    return Friend(village: friend[0], friend[1])
} .sorted { $0.village < $1.village }
precondition(friends.count == N)
precondition(friends.allSatisfy { 1 <= $0.village && Double($0.village) <= pow(10, 18) })
precondition(friends.allSatisfy { 1 <= $0.money && Double($0.money) <= pow(10, 9) })

var answer = 0
var money = K
for i in 0..<N {
    if friends[i].village == answer {
        money += friends[i].money
        continue
    }
    for _ in answer + 1...friends[i].village where money != 0 {
        money -= 1
        answer += 1
    }
    if friends[i].village == answer {
        money += friends[i].money
    } else {
        break
    }
}
print(answer + money)
