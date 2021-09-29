// Q3-6. 箱の中の箱 (2)
// https://algo-method.com/tasks/416

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let N = readInt()
precondition(2 <= N && N <= 10_000)

let aa = readIntArray()
precondition(aa.count == N - 1)
precondition(aa.indices.allSatisfy { (0 <= aa[$0] && aa[$0] <= N - 1) && aa[$0] != $0 + 1 })

// MARK: Main

for k in 1..<N {
    var answer = 0
    var current = k
    while current != 0 {
        current = aa[current - 1]
        answer += 1
    }
    print(answer)
}
