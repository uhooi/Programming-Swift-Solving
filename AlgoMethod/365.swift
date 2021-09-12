// Q1-6. 巡回セールスマン問題 (貪欲法)
// https://algo-method.com/tasks/365

import Foundation

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
precondition(2 <= N && N <= 1_000)

typealias Point = (x: Int, y: Int)
let xxyy: [Point] = (1...N).map { _ in readInt2() }
precondition(xxyy.count == N)
precondition(xxyy.allSatisfy { -100 <= $0.x && $0.x <= 1_000 })
precondition(xxyy.allSatisfy { -100 <= $0.y && $0.y <= 1_000 })

var answer: Double = 0.0
var points = xxyy
let oPoint = points.remove(at: 0)
var srcPoint = oPoint
while true {
    var dstPointIndex = 0
    var dstDistance = Double(Int.max)
    for i in points.indices {
        let point = points[i]
        let distance = sqrt(pow(Double((point.x - srcPoint.x)), 2.0) + pow(Double((point.y - srcPoint.y)), 2.0))
        if distance < dstDistance {
            dstPointIndex = i
            dstDistance = distance
        }
    }
    srcPoint = points.remove(at: dstPointIndex)
    answer += dstDistance
    if points.isEmpty {
        answer += sqrt(pow(Double((oPoint.x - srcPoint.x)), 2.0) + pow(Double((oPoint.y - srcPoint.y)), 2.0))
        break
    }
}
print(answer)
