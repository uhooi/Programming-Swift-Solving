// https://atcoder.jp/contests/abc196/tasks/abc196_b

let X = readLine()!
precondition(1 <= X.count && X.count <= 101)

print(X.prefix(while: { $0 != "." }))
