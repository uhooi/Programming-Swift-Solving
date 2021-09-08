// Q1-3. コイン問題
// https://algo-method.com/tasks/360

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map { Int(String($0))! }
}

// MARK: Main

let X = readInt()
precondition(1 <= X && X <= 1_000)

let aa = readIntArray()
precondition(aa.allSatisfy { 1 <= $0 && $0 <= 100 })

var answer = 0
var remainingYen = X
var fiftyYenCount = aa[0]
var tenYenCount = aa[1]
var fiveYenCount = aa[2]
while remainingYen > 0 {
    if fiftyYenCount > 0 && remainingYen >= 50 {
        remainingYen -= 50
        fiftyYenCount -= 1
    } else if tenYenCount > 0 && remainingYen >= 10 {
        remainingYen -= 10
        tenYenCount -= 1
    } else if fiveYenCount > 0 && remainingYen >= 5 {
        remainingYen -= 5
        fiveYenCount -= 1
    } else {
        remainingYen -= 1
    }
    answer += 1
}
print(answer)
