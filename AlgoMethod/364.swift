// Q1-5. お菓子 (2)
// https://algo-method.com/tasks/364

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Main

let N = readInt()
precondition(1 <= N && N <= 1_000)

var answer = 0
var sweetsCount = N
while sweetsCount > 0 {
    if sweetsCount % 3 == 0 {
        sweetsCount /= 3
    } else {
        sweetsCount -= 1
    }
    answer += 1
}
print(answer)
