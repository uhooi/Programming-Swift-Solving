// https://atcoder.jp/contests/abc194/tasks/abc194_a

enum IcecreamType: Int {
    case icecream = 1
    case iceMilk = 2
    case lactoIce = 3
    case ices = 4
}

let AB = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B) = (AB[0], AB[1])
precondition(0 <= A && A <= 100)
precondition(0 <= B && B <= 100)
precondition(A + B <= 100)

var answer: IcecreamType = .ices
if A + B >= 15 && B >= 8 {
    answer = .icecream
} else if A + B >= 10 && B >= 3 {
    answer = .iceMilk
} else if A + B >= 3 {
    answer = .lactoIce
}
print(answer.rawValue)
