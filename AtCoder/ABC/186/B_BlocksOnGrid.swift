// https://atcoder.jp/contests/abc186/tasks/abc186_b

let hw = readLine()!.split(separator: " ").map { Int($0)! }
let (h, w) = (hw[0], hw[1])
precondition(1 <= h && h <= 100)
precondition(1 <= w && w <= 100)

var aaa: [[Int]] = []
for _ in 0..<h {
    aaa.append(readLine()!.split(separator: " ").map { Int($0)! })
}
precondition(aaa.count == h)
precondition(aaa.allSatisfy { aa in aa.count == w && aa.allSatisfy { a in 0 <= a && a <= 100 } })

print(aaa.flatMap { $0 } .reduce(0, +) - aaa.flatMap { $0 } .min()! * h * w)
