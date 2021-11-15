// 二重ループの全探索 2
// https://algo-method.com/tasks/235

import Foundation

// MARK: Input Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Inputs

let (N, K) = readInt2()
precondition(1 <= N && N <= 1_000)
precondition(1 <= K && K <= 30)

// MARK: Other Functions

private func divisors(of value: Int) -> [Int] {
    precondition(value > 0)
    var divisors: Set<Int> = []
    for i in 1...(Int(floor(sqrt(Double(value))))) where value % i == 0 {
        divisors.insert(i)
        divisors.insert(value / i)
    }
    return divisors.sorted()
}

// MARK: Main

print((1...N).lazy.filter { divisors(of: $0).count == K } .count)
