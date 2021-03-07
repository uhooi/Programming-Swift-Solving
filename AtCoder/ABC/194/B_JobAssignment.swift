// https://atcoder.jp/contests/abc194/tasks/abc194_b

import Foundation

let N = Int(readLine()!)!
precondition(2 <= N && N <= 1_000)

typealias Employee = (a: Int, b: Int)
let employees: [Employee] = (1...N).map { _ in
    let employee = readLine()!.split(separator: " ").map { Int($0)! }
    return Employee(a: employee[0], b: employee[1])
}
precondition(employees.count == N)
precondition(employees.allSatisfy { 1 <= $0.a && Double($0.a) <= pow(10, 5) })
precondition(employees.allSatisfy { 1 <= $0.b && Double($0.b) <= pow(10, 5) })

var answer = Int.max
for i in 1...N {
    for j in 1...N {
        let hour = i != j ? max(employees[i - 1].a, employees[j - 1].b) : employees[i - 1].a + employees[j - 1].b
        if hour < answer {
            answer = hour
        }
    }
}
print(answer)
