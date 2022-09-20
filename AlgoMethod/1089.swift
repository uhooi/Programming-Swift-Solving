// Q. 4 と 6 の Fizz Buzz
// https://algo-method.com/tasks/1089

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

// MARK: Main

for n in 1...N {
    var answer = ""
    if n % 4 == 0 {
        answer = "Fizz"
    }
    if n % 6 == 0 {
        answer += "Buzz"
    }
    print(answer.isEmpty ? n : answer)
}
