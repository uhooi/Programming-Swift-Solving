// Q1-2. お菓子 (1)
// https://algo-method.com/tasks/362

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
    if sweetsCount % 2 == 0 {
        sweetsCount /= 2
    } else {
        sweetsCount -= 1
    }
    answer += 1
}
print(answer)
