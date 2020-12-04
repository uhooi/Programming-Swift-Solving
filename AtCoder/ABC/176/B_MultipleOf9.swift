// https://atcoder.jp/contests/abc176/tasks/abc176_b

let nn = readLine()!.map { Int(String($0))! }
print(nn.reduce(0, +) % 9 == 0 ? "Yes" : "No")
