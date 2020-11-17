// https://atcoder.jp/contests/abc183/tasks/abc183_b

import Foundation

let sxsygxgy = readLine()!.split(separator: " ").map { Double($0)! }
let sx = sxsygxgy[0]
precondition(-pow(10, 6) <= sx && sx <= pow(10, 6))
let sy = sxsygxgy[1]
precondition(0 < sy && sy <= pow(10, 6))
let gx = sxsygxgy[2]
precondition(-pow(10, 6) <= gx && gx <= pow(10, 6))
precondition(sx != gx)
let gy = sxsygxgy[3]
precondition(0 < gy && gy <= pow(10, 6))

let a = (sy + gy) / (sx - gx)
let b = sy - (a * sx)
let x = -(b / a)
print(x)
