// 標準入力3-10
// https://algo-method.com/tasks/62

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readNewLineStringArray(_ count: Int) -> [String] {
    precondition(count >= 1)
    return (1...count).map { _ in readLine()! }
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 1_000)

let ss = readNewLineStringArray(N)
precondition(ss.count == N)
precondition(ss.allSatisfy { ["left", "right"].contains($0) })

// MARK: Main

let condition = ss.reduce(0) { $0 + ($1 == "left" ? -1 : 1) }

let answer: String
switch condition {
case ...(-1):
    answer = "left"
case 0:
    answer = "same"
case 1...:
    answer = "right"
default:
    fatalError()
}
print(answer)
