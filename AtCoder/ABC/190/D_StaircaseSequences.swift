// https://atcoder.jp/contests/abc190/tasks/abc190_d

import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 12))

var m = N
while m % 2 == 0 {
    m /= 2
}
print(divisors(of: m).count * 2)

private func divisors(of value: Int) -> [Int] {
    precondition(value > 0)
    var divisors: Set<Int> = []
    for i in 1...(Int(floor(sqrt(Double(value))))) where value % i == 0 {
        divisors.insert(i)
        divisors.insert(value / i)
    }
    return divisors.sorted()
}
