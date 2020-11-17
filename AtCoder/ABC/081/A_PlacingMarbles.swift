// https://atcoder.jp/contests/abs/tasks/abc081_a

let ss = readLine()!.map { $0 }
precondition(ss.count == 3)
precondition(ss[0] == "0" || ss[0] == "1")
precondition(ss[1] == "0" || ss[1] == "1")
precondition(ss[2] == "0" || ss[2] == "1")

print(ss.filter { $0 == "1" } .count)
