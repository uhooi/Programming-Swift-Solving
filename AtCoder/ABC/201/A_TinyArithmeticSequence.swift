// https://atcoder.jp/contests/abc201/tasks/abc201_a

let aa = readLine()!.split(separator: " ").map { Int($0)! }
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

let sortedAa = aa.sorted()
print(sortedAa[1] - sortedAa[0] == sortedAa[2] - sortedAa[1] ? "Yes" : "No")
