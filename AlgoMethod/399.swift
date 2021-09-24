// Q2-6. 重さは何番目？
// https://algo-method.com/tasks/399

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
precondition(1 <= N && Double(N) <= pow(10, 5))

let ww = readIntArray()
precondition(ww.count == N)
precondition(ww.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 9)})

// MARK: Main

let sortedWw = ww.sorted()
for k in 0...(N - 1) {
    var left = -1
    var right = N
    while (right - left) > 1 {
        let mid = (left + right) / 2
        if sortedWw[mid] >= ww[k] {
            right = mid
        } else {
            left = mid
        }
    }
    print(right)
}
