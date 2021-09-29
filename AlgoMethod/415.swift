// Q3-4. 箱の中の箱 (1)
// https://algo-method.com/tasks/415

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let (N, X) = readInt2()
precondition(2 <= N && N <= 100_000)
precondition(1 <= X && X <= N - 1)

let aa = readIntArray()
precondition(aa.count == N - 1)
precondition(aa.indices.allSatisfy { 0 <= aa[$0] && aa[$0] <= $0 })

// MARK: Main

var answer = 0
var current = X
while current != 0 {
    current = aa[current - 1]
    answer += 1
}
print(answer)
