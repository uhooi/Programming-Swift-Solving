// Q2-7. 貯金 (2)
// https://algo-method.com/tasks/366

// FIXME: WA

import Foundation

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 1_000)

let xx = readIntArray()
precondition(xx.count == N)
precondition(xx.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 18)})

// MARK: Main

for k in 0...(N - 1) {
    var left = -1
    var right = 2_000_000_000
    while (right - left) > 1 {
        let mid = (left + right) / 2
        if (((mid + 1) * mid) / 2) >= xx[k] {
            right = mid
        } else {
            left = mid
        }
    }
    print(right)
}
