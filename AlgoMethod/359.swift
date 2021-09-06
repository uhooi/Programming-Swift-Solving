// Q1-1. 1 円玉と 5 円玉
// https://algo-method.com/tasks/359

import Foundation

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Main

let N = readInt()
precondition(1 <= N && N <= 1_000)

print(Int(floor(Double(N / 5))) + N % 5)
