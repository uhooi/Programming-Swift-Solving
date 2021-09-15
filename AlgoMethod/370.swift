// Q2-3. 最小の添字
// https://algo-method.com/tasks/370

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

let (N, M) = readInt2()
precondition(1 <= N && Double(N) <= pow(10, 5))
precondition(1 <= M && Double(M) <= pow(10, 5))

let aa = readIntArray()
precondition(aa.count == N)
precondition(aa.allSatisfy {1 <= $0 && Double($0) <= pow(10, 9) })

let bb = readIntArray()
precondition(bb.count == M)
precondition(bb.allSatisfy { 1 <= $0 && $0 <= aa[N - 1] })

// MARK: Main

for b in bb {
    var left = 0
    var right = N - 1
    while (right - left) > 1 {
        let mid = (left + right) / 2
        if aa[mid] >= b {
            right = mid
        } else {
            left = mid
        }
    }
    print(right)
}
