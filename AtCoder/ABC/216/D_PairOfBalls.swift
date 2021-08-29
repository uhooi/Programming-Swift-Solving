// https://atcoder.jp/contests/abc216/tasks/abc216_d

// TODO:
import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (NM[0], NM[1])
precondition(1 <= N && Double(N) <= 2 * pow(10, 5))
precondition(2 <= M && Double(M) <= 2 * pow(10, 5))
