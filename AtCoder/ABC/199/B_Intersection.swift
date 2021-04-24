// https://atcoder.jp/contests/abc199/tasks/abc199_b

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

let answer = bb.min()! - aa.max()! + 1
print(answer > 0 ? answer : 0)
