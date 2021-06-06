// https://atcoder.jp/contests/abc204/tasks/abc204_b

let N = Int(readLine()!)!
precondition(1 <= N && N <= 1_000)

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.count == N)
precondition(aa.allSatisfy { 0 <= $0 && $0 <= 1_000 })

let answer = aa.filter { $0 > 10 } .map { $0 - 10 }
print(answer.sum())

private extension Sequence where Element: AdditiveArithmetic {
    func sum() -> Element {
        reduce(.zero, +)
    }
}
