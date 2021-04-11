// https://atcoder.jp/contests/arc114/tasks/arc114_a

// FIXME: WA
import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && N <= 49)

let XX = readLine()!.split(separator: " ").map { Int($0)! }
precondition(XX.count == N)
precondition(XX.allSatisfy { 2 <= $0 && $0 <= 50 })

var answers: Set<Int> = []
for x in XX.sorted() {
    let xDivisors = divisors(of: x).dropLast()
    for i in xDivisors {
        if answers.contains(i) {
            break
        }
        if i == xDivisors.last! {
            answers.insert(i)
        }
    }
}
print(answers.reduce(1, *))

private func divisors(of value: Int) -> [Int] {
    precondition(value > 0)
    var divisors: Set<Int> = []
    for i in 1...(Int(floor(sqrt(Double(value))))) where value % i == 0 {
        divisors.insert(i)
        divisors.insert(value / i)
    }
    return divisors.sorted(by: >)
}
