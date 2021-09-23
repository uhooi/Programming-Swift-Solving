// Q2-9. 九九の表 (1)
// https://algo-method.com/tasks/406

// FIXME: TLE

import Foundation

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Inputs

let (N, K) = readInt2()
precondition(1 <= N && Double(N) <= pow(10, 5))
precondition(1 <= K && K <= N * N)

// MARK: Main

var answer = 0
for i in (1...N) {
    var left = -1
    var right = N
    while (right - left) > 1 {
        let mid = (left + right) / 2
        if (mid + 1) * i > K {
            right = mid
        } else {
            left = mid
        }
    }
    answer += right
}
print(answer)
