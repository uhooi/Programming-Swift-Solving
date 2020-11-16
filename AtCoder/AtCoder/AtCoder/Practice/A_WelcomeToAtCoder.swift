//
//  A_WelcomeToAtCoder.swift
//  AtCoder
//
//  Created by uhooi on 2020/11/16.
//

// https://atcoder.jp/contests/abs/tasks/practice_1

import Foundation

func practiceA() {
    let a = Int(readLine()!)!
    
    let line2 = readLine()!.split(separator: " ").map { Int($0)! }
    let b = line2[0]
    let c = line2[1]
    
    let s = readLine()!
    
    print(a + b + c, s)
}
