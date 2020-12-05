// https://atcoder.jp/contests/arc110/tasks/arc110_a

import Foundation

let n = Int(readLine()!)!
precondition(2 <= n && n <= 30)

var nn: [Int] = []
for i in 2...n {
    let iPrimeFactorizations = primeFactorizations(of: i)
    for j in Set(iPrimeFactorizations) {
        let loopCount = ((iPrimeFactorizations.filter { $0 == j } .count) - (nn.filter { $0 == j } .count))
        if loopCount <= 0 {
            break
        }
        for _ in 1...loopCount {
            nn.append(j)
        }
    }
}

print(nn.reduce(1, *) + 1)

private func primeFactorizations(of value: Int) -> [Int] {
    precondition(value > 0)
    if (1...3).contains(value) {
        return [value]
    }

    var copiedValue = value
    var primeFactorizations: [Int] = []
    for i in 2...Int(floor(Double(n) / 2)) {
        while copiedValue % i == 0 {
            copiedValue /= i
            primeFactorizations.append(i)
        }
        if primeFactorizations.reduce(1, *) == value {
            break
        }
    }
    if primeFactorizations.isEmpty {
        primeFactorizations.append(value)
    }
    return primeFactorizations
}
