// Q1-4. 荷物と箱
// https://algo-method.com/tasks/361

// FIXME: IE

import Foundation

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Main

let (N, M) = readInt2()
precondition(1 <= N && N <= 1_000)
precondition(1 <= M && M <= 1_000)

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

let bb = readIntArray()
precondition(bb.count == M)
precondition(bb.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9) })

var answer = 0
var sortedAa = aa.sorted(by: <)
for b in bb.reversed() {
    while !sortedAa.isEmpty {
        let a = sortedAa.popLast()!
        if b >= a {
            answer += 1
            break
        }
    }
}
print(answer)
