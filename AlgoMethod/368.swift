// Q2-1. 方程式を解く
// https://algo-method.com/tasks/368

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Main

let N = readInt()
precondition(3 <= N && N <= 100_000)

var answer: Double = 0.0
for i in 0... {
    let x: Double = Double(i) * 0.001
    if x * (x * (x + 1) + 2) + 3 >= Double(N) {
        precondition(0.0 <= x && x <= 100.0)
        answer = x
        break
    }
}
print(answer)
