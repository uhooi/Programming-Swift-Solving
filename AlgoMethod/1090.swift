// Q. 市松模様
// https://algo-method.com/tasks/1090

// MARK: Functions

private func readInt4() -> (Int, Int, Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 4)
    return (values[0], values[1], values[2], values[3])
}

// MARK: Inputs

let (H, W, p, q) = readInt4()
precondition(1 <= H && H <= 1_000)
precondition(1 <= W && W <= 1_000)
precondition(0 <= p && p <= H - 1)
precondition(0 <= q && q <= W - 1)

// MARK: Main

print((p + q) % 2 == 0 ? "Black" : "White")

