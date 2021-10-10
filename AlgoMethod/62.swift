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

let leftCount = ss.filter { $0 == "left" } .count
let rightCount = ss.filter { $0 == "right" } .count

var answer = ""
if leftCount > rightCount {
    answer = "left"
} else if leftCount == rightCount {
    answer = "same"
} else if leftCount < rightCount {
    answer = "right"
}
print(answer)
