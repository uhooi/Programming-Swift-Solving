// https://atcoder.jp/contests/abc187/tasks/abc187_c

// FIXME: TLE
import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= Double(2) * pow(10, 5))

var ssNotExclamationSet: Set<String> = []
var ssExclamationSet: Set<String> = []
for _ in 1...n {
    let s = readLine()!
    if s.first == "!" {
        ssExclamationSet.insert(String(s.dropFirst(1)))
    } else {
        ssNotExclamationSet.insert(s)
    }
}
precondition(ssNotExclamationSet.allSatisfy { 1 <= $0.count && $0.count <= 10 })
precondition(ssExclamationSet.allSatisfy { 1 <= $0.count && $0.count <= 10 })

var answer = "satisfiable"
for i in ssNotExclamationSet {
    for j in ssExclamationSet {
        if i == j {
            answer = i
            break
        }
    }
    if answer != "satisfiable" {
        break
    }
}
print(answer)
