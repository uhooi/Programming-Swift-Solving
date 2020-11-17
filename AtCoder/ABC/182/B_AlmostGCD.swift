// https://atcoder.jp/contests/abc182/tasks/abc182_b

let n = Int(readLine()!)!
precondition(1 <= n && n <= 100)
let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == n)

typealias KGCD = (k: Int, gcd: Int)
var kgcd: KGCD = (k: aa[0], gcd: 0)
for k in 2...1000 {
    var gcd = 0
    for a in aa where a % k == 0 {
        gcd += 1
    }
    if kgcd.gcd < gcd {
        kgcd = (k: k, gcd: gcd)
    }
}

print(kgcd.k)
