// https://atcoder.jp/contests/abc180/tasks/abc180_c

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 12))

for i in divisors(of: n) {
    print(i)
}

private func divisors(of value: Int) -> [Int] {
    var divisors: Set<Int> = []
    for i in 1...(Int(floor(sqrt(Double(value))))) where value % i == 0 {
        divisors.insert(i)
        divisors.insert(value / i)
    }
    return divisors.sorted()
}
