// Q2-10. 九九の表 (2)
// https://algo-method.com/tasks/407

import Foundation

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Inputs

let (N, X) = readInt2()
precondition(1 <= N && Double(N) <= pow(10, 5))
precondition(1 <= X && X <= N * N)

// MARK: Main

var left = 0
var right = N * N
while (right - left) > 1 {
    let mid = (left + right) / 2
    
    var sum = 0
    for i in 1...N {
        sum += min(mid / i, N)
    }
    
    if sum >= X {
        right = mid
    } else {
        left = mid
    }
}
print(right)
