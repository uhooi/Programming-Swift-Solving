// https://atcoder.jp/contests/abc185/tasks/abc185_c

// FIXME: WA
import Foundation
 
let l = Int(readLine()!)!
precondition(12 <= l && l <= 200)
 
let answer: Int
switch l {
case 12:
    answer = 1
case 13...:
    answer = ((l - 11)...(l - 1)).reduce(1, *) / (2...11).reduce(1, *)
default:
    preconditionFailure("`l` is an invalid value.")
}
precondition(Double(answer) < pow(2, 63))
print(answer)
