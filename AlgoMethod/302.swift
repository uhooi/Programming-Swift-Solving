// 動的計画法 1-1
// https://algo-method.com/tasks/302

let NXY = readLine()!.split(separator: " ").map { Int($0)! }
let (N, X, Y) = (NXY[0], NXY[1], NXY[2])
precondition(3 <= N && N <= 1_000)
precondition(0 <= X && X <= 99)
precondition(0 <= Y && Y <= 99)

var answer = 0
var a0 = X
var a1 = Y
for _ in 2...(N - 1) {
    answer = (a0 + a1) % 100
    a0 = a1
    a1 = answer
}
print(answer)
