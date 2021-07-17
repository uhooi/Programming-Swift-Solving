// https://atcoder.jp/contests/abc210/tasks/abc210_c

import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= K && K <= N && Double(N) <= 3 * pow(10, 5))

let cc = readLine()!.split(separator: " ").map { Int($0)! }
precondition(cc.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

var countDic: [Int: Int] = [:]
for i in 0..<K {
    countDic[cc[i], default: 0] += 1
}

var answer = countDic.count

for i in K..<N {
    let oldCandy = cc[i - K]
    let newCandy = cc[i]
    countDic[oldCandy, default: 0] -= 1
    countDic[newCandy, default: 0] += 1
    if countDic[oldCandy] == 0 {
        countDic.removeValue(forKey: oldCandy)
    }
    answer = max(answer, countDic.count)
}
print(answer)
