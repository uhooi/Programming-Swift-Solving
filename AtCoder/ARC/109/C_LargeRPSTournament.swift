// https://atcoder.jp/contests/arc109/tasks/arc109_c

let readingInts = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k, s) = (readingInts[0], readingInts[1], readLine()!)
precondition(1 <= n && n <= 100)
precondition(1 <= k && k <= 100)
precondition(s.allSatisfy { $0 == "R" || $0 == "P" || $0 == "S"})
precondition(s.count == n)

// TODO: Unanswered
