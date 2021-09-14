// Q2-1. 方程式を解く
// https://algo-method.com/tasks/368

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Main

let N = readInt()
precondition(3 <= N && N <= 100_000)

var left: Double = 0.0
var right = min(Double(N), 100.0)
while right - left > 0.01 {
    let x = (left + right) / 2.0
    if x * (x * (x + 1) + 2) + 3 >= Double(N) { // ???: 等号を含めていいかわかっていない
        right = x
    } else {
        left = x
    }
}
print(left) // ???: `left` を出力するのでいいかわかっていない
