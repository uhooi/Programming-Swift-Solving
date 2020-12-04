// https://atcoder.jp/contests/abc180/tasks/abc180_c

import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= pow(10, 12))

var answers: Set<Int> = []
for i in 1...(Int(floor(sqrt(Double(n))))) where n % i == 0 {
    answers.insert(i)
    answers.insert(n / i)
}

for i in answers.sorted() {
    print(i)
}
