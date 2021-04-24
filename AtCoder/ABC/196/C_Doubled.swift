// https://atcoder.jp/contests/abc196/tasks/abc196_c

// FIXME: TLE
import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 12))

var answer = 0
for i in 1...N {
    let iString = String(i)
    guard iString.count % 2 == 0 else {
        continue
    }
    
    let firstHalf = iString.prefix(iString.count / 2)
    let lastHalf = iString.suffix(iString.count / 2)
    if firstHalf == lastHalf {
        answer += 1
    }
}
print(answer)
