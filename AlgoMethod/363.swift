// Q1-7. 区間スケジューリング問題
// https://algo-method.com/tasks/363

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Main

let N = readInt()
precondition(1 <= N && N <= 1_000)

typealias Schedule = (startTime: Int, endTime: Int)
let sstt: [Schedule] = (1...N).map { _ in readInt2() }
precondition(sstt.count == N)
precondition(sstt.allSatisfy { 1 <= $0.startTime && $0.startTime <= 10_000 })
precondition(sstt.allSatisfy { 1 <= $0.endTime && $0.endTime <= 10_000 })
precondition(sstt.allSatisfy { $0.startTime <= $0.endTime })

var answer = 0
var schedules = sstt.sorted { $0.endTime > $1.endTime }
var srcSchedule = schedules.popLast()!
answer += 1
while true {
    schedules = schedules.filter { $0.startTime >= srcSchedule.endTime }
    guard let schedule = schedules.popLast() else {
        break
    }
    srcSchedule = schedule
    answer += 1
}
print(answer)
