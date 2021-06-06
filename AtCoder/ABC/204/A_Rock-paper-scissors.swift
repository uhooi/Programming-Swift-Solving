// https://atcoder.jp/contests/abc204/tasks/abc204_a

let xy = readLine()!.split(separator: " ").map { Int($0)! }
let (x, y) = (xy[0], xy[1])
precondition([0, 1, 2].contains(x))
precondition([0, 1, 2].contains(y))

let answer: Int
if x == y {
    answer = x
} else {
    answer = [0, 1, 2].filter { $0 != x && $0 != y } .first!
}
print(answer)
