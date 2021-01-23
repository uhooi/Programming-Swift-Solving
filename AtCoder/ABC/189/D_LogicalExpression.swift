// https://atcoder.jp/contests/abc189/tasks/abc189_d

// FIXME: WA
import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && N <= 60)

let ss = (1...N).map { _ in readLine()! }
precondition(ss.count == N)
precondition(ss.allSatisfy { ["AND", "OR"].contains($0) })

var answer = 0
for i in 1...((NSDecimalNumber(decimal: pow(2, (N + 1))).intValue) - 1) {
    var y: Bool? = nil
    let xx = i.binaryString(digits: (N + 1)).map({ String($0) }).reversed().map { $0 }
    print(xx)
    for j in 1...xx.count {
        let x = Bool(truncating: Int(xx[j - 1])! as NSNumber)
        print(x)
        if y == nil {
            y = x
        } else {
            let s = ss[j - 2]
            if s == "AND" {
                y = y! && x
            } else if s == "OR" {
                y = y! || x
            } else {
                preconditionFailure()
            }
        }
    }
    answer += y! ? 1 : 0
}
print(answer)

private extension FixedWidthInteger {
    func binaryString(digits: Int) -> String {
        var result: [String] = []
        for i in 0..<(Self.bitWidth / 8) {
            let byte = UInt8(truncatingIfNeeded: self >> (i * 8))
            let byteString = String(byte, radix: 2)
            let padding = String(repeating: "0", count: 8 - byteString.count)
            result.append(padding + byteString)
        }
        return String(result.reversed().joined().suffix(digits))
    }
}
