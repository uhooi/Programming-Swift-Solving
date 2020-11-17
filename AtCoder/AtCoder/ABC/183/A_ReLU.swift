//
//  A_ReLU.swift
//  AtCoder
//
//  Created by uhooi on 2020/11/16.
//

// https://atcoder.jp/contests/abc183/tasks/abc183_a

func abc183A() {
    let x = Int(readLine()!)!
    print(reLU(x))
}

private func reLU(_ x: Int) -> Int {
    if x < 0 {
        return 0
    } else {
        return x
    }
}
