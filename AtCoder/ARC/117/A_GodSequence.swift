// https://atcoder.jp/contests/arc117/tasks/arc117_a

let AB = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B) = (AB[0], AB[1])
precondition(1 <= A && A <= 1_000)
precondition(1 <= B && B <= 1_000)

let positives: [Int]
let negatives: [Int]
let lastNumber: Int
if A >= B {
    positives = Array(1...A)
    negatives = B > 1 ? Array((-B + 1)...(-1)) : []
    lastNumber = -(positives.sum() + negatives.sum())
} else {
    negatives = Array((-B)...(-1))
    positives = A > 1 ? Array(1...(A - 1)) : []
    lastNumber = -negatives.sum() - positives.sum()
}
let answer = negatives + positives + [lastNumber]
print(answer.map { String($0) } .joined(separator: " "))

private extension Sequence where Element: AdditiveArithmetic {
    func sum() -> Element {
        reduce(.zero, +)
    }
}
