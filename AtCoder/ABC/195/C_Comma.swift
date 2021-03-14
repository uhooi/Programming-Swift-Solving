import Foundation

let N = Int(readLine()!)!
precondition(1 <= N && Double(N) <= pow(10, 15))

var answer = 0
if N >= 1_000 {
    answer += N - 999
}
if N >= 1_000_000 {
    answer += N - 999_999
}
if N >= 1_000_000_000 {
    answer += N - 999_999_999
}
if N >= 1_000_000_000_000 {
    answer += N - 999_999_999_999
}
if N >= 1_000_000_000_000_000 {
    answer += N - 999_999_999_999_999
}
print(answer)
