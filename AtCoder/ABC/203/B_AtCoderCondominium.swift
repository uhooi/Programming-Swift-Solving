// https://atcoder.jp/contests/abc203/tasks/abc203_b

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let (N, K) = (NK[0], NK[1])
precondition(1 <= N && N <= 9)
precondition(1 <= K && K <= 9)

var answer = 0
for i in 1...N {
    for j in 1...K {
        answer += 100 * i + j
    }
}
print(answer)
