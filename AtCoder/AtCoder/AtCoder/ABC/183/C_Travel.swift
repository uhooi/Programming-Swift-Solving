//
//  C_Travel.swift
//  AtCoder
//
//  Created by uhooi on 2020/11/16.
//

// https://atcoder.jp/contests/abc183/tasks/abc183_c

import Foundation

// TODO: WA
func abc183C() {
    let nk = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nk[0]
    let k = nk[1]
    
    var tnn: [[Int]] = [[]]
    for i in 0..<n {
        let tij = readLine()!.split(separator: " ").map { Int($0)! }
        tnn[i].append(contentsOf: tij)
    }
    
    var a = 0
}
