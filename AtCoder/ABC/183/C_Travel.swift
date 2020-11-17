// https://atcoder.jp/contests/abc183/tasks/abc183_c

import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0]
precondition(2 <= n && n <= 8)

let k = nk[1]
precondition(1 <= k && Double(k) <= pow(10, 9))

var ttt: [[Int]] = []
for _ in 0..<n {
    let tt = readLine()!.split(separator: " ").map { Int($0)! }
    ttt += [tt]
}

var excludingFirstCity: [Int] = []
for i in 1..<n {
    excludingFirstCity.append(i)
}

let allPathways = permutations(of: excludingFirstCity).map { [0] + $0 + [0] }

var answer = 0
for pathway in allPathways {
    var transitTime = 0
    for i in 0..<pathway.count - 1 {
        transitTime += ttt[pathway[i]][pathway[i + 1]]
    }
    if transitTime == k {
        answer += 1
    }
}

print(answer)

private func permutations(of values: [Int]) -> [[Int]] {
    permutations(of: values[...])
}

private func permutations(of values: ArraySlice<Int>) -> [[Int]] {
    if values.count <= 1 {
        return [Array(values)]
    }
    var results: [[Int]] = []
    for i in values.indices {
        let baseValue = values[i]
        let excludingBaseValue = values[..<i] + values[(i + 1)...]
        results += permutations(of: excludingBaseValue).map { [baseValue] + $0 }
    }
    return results
}
