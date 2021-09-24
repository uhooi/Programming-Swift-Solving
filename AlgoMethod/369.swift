// Q2-8. ひもを切る
// https://algo-method.com/tasks/369

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

// MARK: Inputs

let (N, K) = readInt2()
precondition(1 <= N && Double(N) <= pow(10, 5))
precondition(1 <= K && Double(K) <= pow(10, 5))

let ll = readIntArray()
precondition(ll.count == N)
precondition(ll.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 5)})

// MARK: Main

var left: Double = 0.0
var right: Double = 100_000.0
while (right - left) > 0.000001 {
    let mid = (left + right) / 2
    if (ll.map({ Int(floor(Double($0) / mid)) }).reduce(0, +)) < K {
        right = mid
    } else {
        left = mid
    }
}
print(right)
