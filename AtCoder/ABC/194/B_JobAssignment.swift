// https://atcoder.jp/contests/abc194/tasks/abc194_b

import Foundation

let N = Int(readLine()!)!
precondition(2 <= N && N <= 1_000)

typealias Task = (a: Int, b: Int)
let tasks: [Task] = (1...N).map { _ in
    let task = readLine()!.split(separator: " ").map { Int($0)! }
    return Task(a: task[0], b: task[1])
}
precondition(tasks.count == N)
precondition(tasks.allSatisfy { 1 <= $0.a && Double($0.a) <= pow(10, 5) })
precondition(tasks.allSatisfy { 1 <= $0.b && Double($0.b) <= pow(10, 5) })

let aSortedTasks = tasks.sorted { $0.a < $1.a }
let bSortedTasks = tasks.sorted { $0.b < $1.b }
let multipleSortedTasks = tasks.sorted { $0.a + $0.b < $1.a + $1.b }
let minA = aSortedTasks.first!
let minB = bSortedTasks.first!
let minMultiple = multipleSortedTasks.first!.a + multipleSortedTasks.first!.b

var answer = 0
if minA != minB {
    answer = min(max(minA.a, minB.b), minMultiple)
} else {
    answer = minMultiple
    for i in 0...1 {
        for j in 0...1 {
            let hour = max(aSortedTasks[i].a, bSortedTasks[j].b)
            if i != j && hour <= answer {
                answer = hour
                break
            }
        }
    }
}
print(answer)
