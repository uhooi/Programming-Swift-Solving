// 動的計画法 1-6
// https://algo-method.com/tasks/323

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (NM[0], NM[1])
precondition(1 <= N && N <= 1_000)
precondition(1 <= M && M <= 20)

let dd = readLine()!.split(separator: " ").map { Int($0)! }
precondition(dd.count == M)
precondition(dd.allSatisfy { 1 <= $0 && $0 <= 1_000 })

let removedDD = dd.filter { $0 <= N }

var answer = false
var dp: Set<Int> = Set(removedDD)
while !dp.allSatisfy({ $0 > N }) {
    if dp.contains(N) {
        answer = true
        break
    }
    var tmpDp: Set<Int> = []
    for i in dp {
        for j in removedDD {
            tmpDp.insert(i + j)
        }
    }
    dp = tmpDp
}
print(answer ? "Yes" : "No")
