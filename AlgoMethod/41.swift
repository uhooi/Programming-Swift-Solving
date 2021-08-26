// 動的計画法 2-3
// https://algo-method.com/tasks/41

// FIXME: WA
let workCount = 3

let N = Int(readLine()!)!
precondition(1 <= N && N <= 1_000)

typealias Work = (w0: Int, w1: Int, w2: Int)
let works: [Work] = (1...N).map { _ in
    let work = readLine()!.split(separator: " ").map { Int($0)! }
    return Work(w0: work[0], w1: work[1], w2: work[2])
}
precondition(works.count == N)
precondition(works.allSatisfy { 1 <= $0.w0 && $0.w0 <= 1_000 })
precondition(works.allSatisfy { 1 <= $0.w1 && $0.w1 <= 1_000 })
precondition(works.allSatisfy { 1 <= $0.w2 && $0.w2 <= 1_000 })

var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: workCount), count: N)
dp[0] = [works[0].w0, works[0].w1, works[0].w2]
for i in 1..<N {
    let w0Max = works[i].w0 + max(works[i - 1].w1, works[i - 1].w2)
    let w1Max = works[i].w1 + max(works[i - 1].w0, works[i - 1].w2)
    let w2Max = works[i].w2 + max(works[i - 1].w0, works[i - 1].w1)
    dp[i] = [w0Max, w1Max, w2Max]
}
print(dp[N - 1].max()!)
