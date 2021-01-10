// https://atcoder.jp/contests/abc188/tasks/abc188_b

let n = Int(readLine()!)!
precondition(1 <= n && n <= 100_000)

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == n)
precondition(aa.allSatisfy { -100 <= $0 && $0 <= 100 })

let bb = readLine()!.split(separator: " ").map { Int($0)! }
precondition(bb.count == n)
precondition(bb.allSatisfy { -100 <= $0 && $0 <= 100 })

let innerProduct = (0...(n - 1))
    .map { aa[$0] * bb[$0] }
    .reduce(0, +)

print(innerProduct == 0 ? "Yes" : "No")
