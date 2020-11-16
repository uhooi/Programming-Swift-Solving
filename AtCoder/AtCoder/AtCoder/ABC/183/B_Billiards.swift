//
//  B_Billiards.swift
//  AtCoder
//
//  Created by uhooi on 2020/11/16.
//

// https://atcoder.jp/contests/abc183/tasks/abc183_b

import Foundation

func abc183B() {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let sx = input[0]
    let sy = input[1]
    let gx = input[2]
    let gy = input[3]

    let a = (sy + gy) / (sx - gx)
    let b = sy - (a * sx)
    let x = -(b / a)
    print(x)
}
