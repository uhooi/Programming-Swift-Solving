// 標準入力2-10
// https://algo-method.com/tasks/33

// MARK: Functions

private func readString() -> String {
    readLine()!
}

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Inputs

let S = readString()
precondition(1 <= S.count && S.count <= 20)

let (N, M) = readInt2()
precondition(1 <= N && N <= S.count)
precondition(1 <= M && M <= S.count)
precondition(N < M)

// MARK: Main

var characters = Array(S)
characters.swapAt(N - 1, M - 1)
print(String(characters))
