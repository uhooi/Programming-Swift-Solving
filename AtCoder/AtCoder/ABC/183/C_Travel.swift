//
//  C_Travel.swift
//  AtCoder
//
//  Created by uhooi on 2020/11/16.
//

// https://atcoder.jp/contests/abc183/tasks/abc183_c

import Foundation

func abc183C() {
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
}

private func permutations(of values: [Int]) -> [[Int]] {
    if values.count <= 1 {
        return [values]
    }
    var results: [[Int]] = []
    for index in 0..<values.count {
        let firstValue = values[index]
        var values = values
        values.remove(at: index)
        results += permutations(of: values).map { [firstValue] + $0 }
    }
    return results
}
