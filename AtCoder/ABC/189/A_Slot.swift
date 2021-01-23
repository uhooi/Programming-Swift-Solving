// https://atcoder.jp/contests/abc189/tasks/abc189_a

let cc = readLine()!.map { String($0) }
precondition(cc.count == 3)

print(cc[0] == cc[1] && cc[1] == cc[2] ? "Won" : "Lost")
