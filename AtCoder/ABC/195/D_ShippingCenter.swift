// https://atcoder.jp/contests/abc195/tasks/abc195_d

// FIXME: WA
import Foundation

let NMQ = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M, Q) = (NMQ[0] ,NMQ[1], NMQ[2])
precondition(1 <= N && N <= 50)
precondition(1 <= M && M <= 50)
precondition(1 <= Q && Q <= 50)

typealias Baggage = (weight: Int, value: Int)
let baggages: [Baggage] = (1...N).map { _ in
    let baggage = readLine()!.split(separator: " ").map { Int($0)! }
    return Baggage(weight: baggage[0], value: baggage[1])
}
precondition(baggages.count == N)
precondition(baggages.allSatisfy { 1 <= $0.weight && Double($0.weight) <= pow(10, 6) })
precondition(baggages.allSatisfy { 1 <= $0.value && Double($0.value) <= pow(10, 6) })

let boxes = readLine()!.split(separator: " ").map { Int($0)! }
precondition(boxes.count == M)
precondition(boxes.allSatisfy { 1 <= $0 && Double($0) <= pow(10, 6) })

typealias Query = (left: Int, right: Int)
let queries: [Query] = (1...Q).map { _ in
    let query = readLine()!.split(separator: " ").map { Int($0)! }
    return Query(left: query[0], right: query[1])
}
precondition(queries.count == Q)
precondition(queries.allSatisfy { 1 <= $0.left && $0.left <= $0.right && $0.right <= M })

let sortedBaggages = baggages.sorted { $0.value > $1.value }
for query in queries {
    var answer = 0
    let sortedBoxes = boxes.enumerated().filter { $0.offset < query.left - 1 || query.right - 1 < $0.offset } .sorted(by: >)
    var remainingBaggages = sortedBaggages
    for box in sortedBoxes {
        for i in 0..<remainingBaggages.count {
            if box.element >= remainingBaggages[i].value {
                answer += remainingBaggages[i].value
                remainingBaggages.remove(at: i)
                break
            }
        }
    }
    print(answer)
}
