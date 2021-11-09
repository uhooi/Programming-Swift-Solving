// 数字の全探索 5
// https://algo-method.com/tasks/225

// MARK: Functions

private func readInt() -> Int {
    Int(readLine()!)!
}

private func fizzBuzz(_ value: Int) -> [Any] {
    precondition(value > 0)
    return (1...value).map {
        if $0 % 15 == 0 {
            return "FizzBuzz"
        } else if $0 % 3 == 0 {
            return "Fizz"
        } else if $0 % 5 == 0 {
            return "Buzz"
        } else {
            return $0
        }
    }
}

// MARK: Inputs

let N = readInt()
precondition(1 <= N && N <= 100)

// MARK: Main

fizzBuzz(N).forEach { print($0) }
