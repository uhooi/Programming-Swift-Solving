//
//  B_MixJuice.swift
//  AtCoder
//
//  Created by uhooi on 2020/11/16.
//

// https://atcoder.jp/contests/abc171/tasks/abc171_b

import Foundation

func abc171B() {
    let line1 = readLine()!.split(separator: " ").map { Int($0)! }
    let n = line1[0]
    let k = line1[1]
    
    let line2 = readLine()!.split(separator: " ").map { Int($0)! }
    
    print(line2.sorted { $0 < $1 } .prefix(k).reduce(0, +))
}
