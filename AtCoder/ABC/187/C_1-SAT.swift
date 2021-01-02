// https://atcoder.jp/contests/abc187/tasks/abc187_c

// FIXME: TLE
import Foundation

let n = Int(readLine()!)!
precondition(1 <= n && Double(n) <= Double(2) * pow(10, 5))

var ssSet: Set<String> = []
for _ in 1...n {
    ssSet.insert(readLine()!)
}
let ss = Array(ssSet)
precondition(ss.count == n)
precondition(ss.allSatisfy { 1 <= $0.count && $0.count <= 10 })

var answer = "satisfiable"
for i in 0..<(ss.count - 1) {
    for j in (i + 1)..<ss.count {
        if ss[i] == "!" + ss[j] {
            answer = ss[j]
            break
        }
        if "!" + ss[i] == ss[j] {
            answer = ss[i]
            break
        }
    }
    if answer != "satisfiable" {
        break
    }
}
print(answer)
