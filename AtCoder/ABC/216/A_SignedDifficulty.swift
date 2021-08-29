// https://atcoder.jp/contests/abc216/tasks/abc216_a

let XY = readLine()!.split(separator: ".").map { Int($0)! }
let (X, Y) = (XY[0], XY[1])
precondition(1 <= X && X <= 15)
precondition(0 <= Y && Y <= 9)

let answer: String
switch Y {
case 0...2:
    answer = "\(X)-"
case 3...6:
    answer = "\(X)"
case 7...9:
    answer = "\(X)+"
default:
    preconditionFailure()
}
print(answer)
