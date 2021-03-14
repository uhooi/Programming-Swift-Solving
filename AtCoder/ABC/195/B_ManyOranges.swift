// https://atcoder.jp/contests/abc195/tasks/abc195_b

import Foundation

let ABW = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B, W) = (ABW[0] ,ABW[1], ABW[2])
precondition(1 <= A && A <= B && B <= 1_000)
precondition(1 <= W && W <= 1_000)

let weight = W * 1_000
for n in 1...(1_000 * 1_000) {
    if A * n <= weight && weight <= B * n {
        let lower = Int(ceil(Double(weight) / Double(B)))
        let upper = Int(floor(Double(weight) / Double(A)))
        print(lower, upper)
        break
    }
    if A * n > weight {
        print("UNSATISFIABLE")
        break
    }
}
