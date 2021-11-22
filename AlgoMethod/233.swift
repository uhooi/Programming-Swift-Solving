// 複数の配列の全探索 3
// https://algo-method.com/tasks/233

// MARK: Input Functions

private func readInt3() -> (Int, Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 3)
    return (values[0], values[1], values[2])
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Inputs

let (X, Y, Z) = readInt3()
precondition(1 <= X && X <= 100)
precondition(1 <= Y && Y <= 100)
precondition(1 <= Z && Z <= 100)

let aa = readIntArray()
precondition(aa.count == X)
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

let bb = readIntArray()
precondition(bb.count == Y)
precondition(bb.allSatisfy { 1 <= $0 && $0 <= 100 })

let cc = readIntArray()
precondition(cc.count == Z)
precondition(cc.allSatisfy { 1 <= $0 && $0 <= 100 })

// MARK: Main

var answer = 0
for a in aa {
    for b in bb {
        for c in cc where a + b == c {
            answer += 1
        }
    }
}
print(answer)
