// https://atcoder.jp/contests/abc195/tasks/abc195_b

import Foundation

let ABW = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B, W) = (ABW[0] ,ABW[1], ABW[2])
precondition(1 <= A && A <= B && B <= 1_000)
precondition(1 <= W && W <= 1_000)

let weight = W * 1_000
for i in 1... {
    if A * i <= weight && weight <= B * i {
        let minAnswer = Int(ceil(Double(weight) / Double(B)))
        let maxAnswer = Int(floor(Double(weight) / Double(A)))
        print(minAnswer, maxAnswer)
        break
    }
    if A * i > weight {
        print("UNSATISFIABLE")
        break
    }
}
