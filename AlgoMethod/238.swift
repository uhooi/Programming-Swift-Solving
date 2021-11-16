// 二重ループの全探索 3
// https://algo-method.com/tasks/238

// MARK: Input Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Inputs

let (L, R) = readInt2()
precondition(1 <= L && L <= 1_000)
precondition(L <= R && R <= 1_000)

// MARK: Other Functions

private extension Int {
    var isPalindrome: Bool { String(self) == String(String(self).reversed()) }
}

// MARK: Main

print((L...R).lazy.filter { $0.isPalindrome } .count)
