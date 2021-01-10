// https://atcoder.jp/contests/abc188/tasks/abc188_d

import Foundation

let NC = readLine()!.split(separator: " ").map { Int($0)! }
let (N, C) = (NC[0], NC[1])
precondition(1 <= N && Double(N) <= 2 * pow(10, 5))
precondition(1 <= C && Double(C) <= pow(10, 9))

typealias ABC = (a: Int, b: Int, c: Int)
let aabbcc: [ABC] = (1...N).map { _ in
    let abc = readLine()!.split(separator: " ").map { Int($0)! }
    return ABC(a: abc[0], b: abc[1], c: abc[2])
}
precondition(aabbcc.allSatisfy { 1 <= $0.a && $0.a <= $0.b && Double($0.b) <= pow(10, 9) })
precondition(aabbcc.allSatisfy { 1 <= $0.c && Double($0.c) <= pow(10, 9) })

typealias Event = (day: Int, fee: Int)
var events: [Event] = []
for abc in aabbcc {
    events.append(Event(day: abc.a - 1, fee: abc.c))
    events.append(Event(day: abc.b, fee: -abc.c))
}
events.sort { $0.day < $1.day }

var answer = 0
var fee = 0
var day = 0
for event in events {
    if event.day > day {
        answer += min(fee, C) * (event.day - day)
        day = event.day
    }
    fee += event.fee
}
print(answer)
