// https://atcoder.jp/contests/abc201/tasks/abc201_c

// FIXME: WA
let S = readLine()!
precondition(S.count == 10)
precondition(S.allSatisfy { ["o", "x", "?"].contains($0) })

let answer: Int
let qCount = S.filter({ $0 == "?" }).count
if S.filter({ $0 == "o" }).count > 4 || S.allSatisfy({ $0 == "x" }) {
    answer = 0
} else if S.filter({ $0 == "o" }).count == 4 {
    answer = [4, 3, 2, 1].reduce(1, *)
} else if S.filter({ $0 == "o" }).count == 3 {
    answer = [3, 2, 1].reduce(1, *) * qCount * 4 + [3, 2, 1].reduce(1, *) * 3 * 2
} else if S.filter({ $0 == "o" }).count == 2 {
    answer = 3 * 2 + 3 * qCount * 4 * 2 + 6 * qCount * qCount * 2
} else if S.filter({ $0 == "o" }).count == 1 {
    answer = 1 + 4 * qCount + 6 * qCount * qCount + 4 * qCount * qCount * qCount
} else {
    answer = qCount * qCount * qCount * qCount
}
print(answer)
