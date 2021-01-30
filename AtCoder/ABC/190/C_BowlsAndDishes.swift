// https://atcoder.jp/contests/abc190/tasks/abc190_c

import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (NM[0], NM[1])
precondition(2 <= N && N <= 100)
precondition(1 <= M && M <= 100)

typealias AB = (a: Int, b: Int)
let aabb: [AB] = (1...M).map { _ in
    let aabb = readLine()!.split(separator: " ").map { Int($0)! }
    return AB(a: aabb[0], b: aabb[1])
}
precondition(aabb.count == M)
precondition(aabb.allSatisfy { 1 <= $0.a && $0.a < $0.b && $0.b <= N })

let K = Int(readLine()!)!
precondition(1 <= K && K <= 16)

typealias CD = (c: Int, d: Int)
let ccdd: [CD] = (1...K).map { _ in
    let ccdd = readLine()!.split(separator: " ").map { Int($0)! }
    return CD(c: ccdd[0], d: ccdd[1])
}
precondition(ccdd.count == K)
precondition(ccdd.allSatisfy { 1 <= $0.c && $0.c < $0.d && $0.d <= N })

var answer = 0
for i in 0...pow(2, K).intValue {
    var placedBalls: Set<Int> = []
    let selects = i.binaryString(digit: K).map { Int(String($0))! }
    for j in 1...K {
        placedBalls.insert(selects[j - 1] == 0 ? ccdd[j - 1].c : ccdd[j - 1].d)
    }
    let satisfies = aabb.filter { placedBalls.contains($0.a) && placedBalls.contains($0.b) } .count
    answer = satisfies > answer ? satisfies : answer
}
print(answer)

private extension FixedWidthInteger {
    func binaryString(digit: Int) -> String {
        var result: [String] = []
        for i in 0..<(Self.bitWidth / 8) {
            let byte = UInt8(truncatingIfNeeded: self >> (i * 8))
            let byteString = String(byte, radix: 2)
            let padding = String(repeating: "0", count: 8 - byteString.count)
            result.append(padding + byteString)
        }
        return String(result.reversed().joined().suffix(digit))
    }
}

private extension Decimal {
    var intValue: Int { NSDecimalNumber(decimal: self).intValue }
}
