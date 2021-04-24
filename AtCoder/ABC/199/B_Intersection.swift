// https://atcoder.jp/contests/abc199/tasks/abc199_b

// FIXME: TLE
let N = Int(readLine()!)!
precondition(1 <= N && N <= 100)

let aa = readLine()!.split(separator: " ").map { Int($0)! }
let bb = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(bb.count == N)
//precondition(
//    aa.allSatisfy { a in
//        bb.allSatisfy { b in
//            1 <= a && a <= b && b <= 1_000
//        }
//    }
//)

var answer: Set<Int> = Set(1...1_000)
for i in 0..<N {
    for j in 1..<aa[i] {
        answer.remove(j)
    }
    for j in (bb[i] + 1)...1_000 {
        answer.remove(j)
    }
}
print(answer.count)
