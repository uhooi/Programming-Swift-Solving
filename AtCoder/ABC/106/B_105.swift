// https://atcoder.jp/contests/abc106/tasks/abc106_b

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && n <= 200)

let answer = (1...n)
    .filter { $0 % 2 != 0 }
    .filter { divisors(of: $0).count == 8 }
    .count
print(answer)

private func divisors(of value: Int) -> [Int] {
    precondition(value > 0)
    var divisors: Set<Int> = []
    for i in 1...(Int(floor(sqrt(Double(value))))) where value % i == 0 {
        divisors.insert(i)
        divisors.insert(value / i)
    }
    return divisors.sorted()
}
