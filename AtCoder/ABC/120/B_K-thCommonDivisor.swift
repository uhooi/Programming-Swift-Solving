// https://atcoder.jp/contests/abc120/tasks/abc120_b

import Foundation

let abk = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b, k) = (abk[0], abk[1], abk[2])
precondition(1 <= a && a <= 100)
precondition(1 <= b && b <= 100)
precondition(1 <= k)

let answers = (1...100)
    .filter { a % $0 == 0 }
    .filter { b % $0 == 0 }
    .sorted(by: >)
print(answers[k - 1])

private func divisors(of value: Int) -> [Int] {
    precondition(value > 0)
    var divisors: Set<Int> = []
    for i in 1...(Int(floor(sqrt(Double(value))))) where value % i == 0 {
        divisors.insert(i)
        divisors.insert(value / i)
    }
    return divisors.sorted()
}
