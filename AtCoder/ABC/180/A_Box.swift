// https://atcoder.jp/contests/abc180/tasks/abc180_a

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let a = input[1]
let b = input[2]

print(n - a + b)
