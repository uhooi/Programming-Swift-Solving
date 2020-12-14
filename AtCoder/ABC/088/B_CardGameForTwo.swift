// https://atcoder.jp/contests/abs/tasks/abc088_b

let n = Int(readLine()!)!
precondition(1 <= n && n <= 100)
let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == n)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

let sortedAa = aa.sorted(by: >)
var aliceSum = 0
var bobSum = 0
for index in sortedAa.indices {
    if index % 2 == 0 {
        aliceSum += sortedAa[index]
    } else {
        bobSum += sortedAa[index]
    }
}
print(aliceSum - bobSum)
