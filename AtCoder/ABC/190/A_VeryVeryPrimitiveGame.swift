// https://atcoder.jp/contests/abc190/tasks/abc190_a

let ABC = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B, C) = (ABC[0], ABC[1], ABC[2])
precondition(0 <= A && A <= 100)
precondition(0 <= B && B <= 100)
precondition([0, 1].contains(C))

var answer = ""
if A > B || (A == B && C == 1) {
    answer = "Takahashi"
} else {
    answer = "Aoki"
}
print(answer)
