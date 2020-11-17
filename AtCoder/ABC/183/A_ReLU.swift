// https://atcoder.jp/contests/abc183/tasks/abc183_a

let x = Int(readLine()!)!
precondition(-10 <= x && x <= 10)

print(reLU(x))

private func reLU(_ x: Int) -> Int {
    max(0, x)
}
