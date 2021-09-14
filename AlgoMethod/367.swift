// Q2-2. 貯金
// https://algo-method.com/tasks/367

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Main

let (N, M) = readInt2()
precondition(0 <= N && N <= 10_000)
precondition(N + 6 <= M && M <= 100_000)

var left: Double = 0.0
var right = Double(M)
while right - left > 0.01 {
    let x = (left + right) / 2.0
    var deposit = Double(N + 1)
    for _ in 1...5 {
        deposit = deposit * x + 1.0
    }
    if deposit >= Double(M) { // ???: 等号を含めていいかわかっていない
        right = x
    } else {
        left = x
    }
}
print(left) // ???: `left` を出力するのでいいかわかっていない
