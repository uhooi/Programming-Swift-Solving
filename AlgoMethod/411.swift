// Q3-1. 友達
// https://algo-method.com/tasks/411

// MARK: Functions

private func readInt3() -> (Int, Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 3)
    return (values[0], values[1], values[2])
}

private func readNewLineStringArray(_ count: Int) -> [String] {
    precondition(count >= 1)
    return (1...count).map { _ in readLine()! }
}

// MARK: Inputs

let (N, A, B) = readInt3()
precondition(2 <= N && N <= 100)
precondition(0 <= A && A <= N - 1)
precondition(0 <= B && B <= N - 1)
precondition(A != B)

let ss = readNewLineStringArray(N)
precondition(ss.count == N)
precondition(ss.allSatisfy { $0.count == N })

// MARK: Main

let answer = ss[A].map({ String($0) })[B]
print(answer == "o" ? "Yes" : "No")
