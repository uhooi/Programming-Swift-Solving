// Q2-5. 和がK以上のペア
// https://algo-method.com/tasks/381

// FIXME: WA

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
precondition(1 <= K && Double(K) <= 2 * pow(10, 8))

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy {1 <= $0 && Double($0) <= pow(10, 8) })

// MARK: Main

let sortedAa = aa.sorted()
var answer = 0
for i in sortedAa.indices {
    var left = -1
    var right = N
    while (right - left) > 1 {
        let mid = (left + right) / 2
        if sortedAa[i] + sortedAa[mid] < K {
            right = mid
        } else {
            left = mid
        }
    }
    answer += right
}
print(answer)
