// 文字列の全探索 4
// https://algo-method.com/tasks/230

// MARK: Input Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readString() -> String {
    readLine()!
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

let S = readString()
precondition(S.count == N)

let T = readString()
precondition(T.count == N)

// MARK: Main

let ss = Array(S)
let tt = Array(T)
print((0..<N).lazy.filter { ss[$0] != tt[$0] } .count)
