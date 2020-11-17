// https://atcoder.jp/contests/abc183/tasks/abc183_a

let x = Int(readLine()!)!
print(reLU(x))

private func reLU(_ x: Int) -> Int {
    if x < 0 {
        return 0
    } else {
        return x
    }
}
